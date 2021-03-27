local Roact: Roact = require(script.Parent.Roact)

return function(Context, render)
    return Roact.createElement(Context.Consumer, {
        render = render,
    })
end
