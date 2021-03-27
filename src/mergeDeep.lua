local Roact: Roact = require(script.Parent.Roact)

local copyDeep = require(script.Parent.copyDeep)

local function mergeDeep(...)
    local new = {}

    for _, dictionary in ipairs({ ... }) do
        if type(dictionary) ~= "table" then
            continue
        end

        for key, value in pairs(dictionary) do
            if value == Roact.None then
                new[key] = nil
            elseif type(value) == "table" then
                if new[key] == nil or type(new[key]) ~= "table" then
                    new[key] = copyDeep(value)
                else
                    new[key] = mergeDeep(new[key], value)
                end
            else
                new[key] = value
            end
        end
    end

    return new
end

return mergeDeep
