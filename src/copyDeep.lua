local function copyDeep(dictionary)
    local new ={}

    for key, value in pairs(dictionary) do
        if type(value) == "table" then
            new[key] = copyDeep(value)
        else
            new[key] = value
        end
    end

    return new
end

return copyDeep
