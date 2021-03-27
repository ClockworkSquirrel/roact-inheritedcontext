local Roact: Roact = require(script.Parent.Roact)

local Context = require(script.Parent.Context)
local withContext = require(script.Parent.withContext)
local mergeDeep = require(script.Parent.mergeDeep)

return function(props)
    return withContext(function(outerContext)
        local innerContext = mergeDeep(outerContext, props.value)

        if props.transform then
            innerContext = props.transform(innerContext)
        end

        return Roact.createElement(Context.Provider, {
            value = innerContext,
        }, props[Roact.Children])
    end)
end
