local Roact: Roact = require(script.Parent.Roact)
local Context = require(script.Parent.Context)

return function(render)
    return Roact.createElement(Context.Consumer, {
        render = render,
    })
end
