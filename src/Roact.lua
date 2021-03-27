local PackageIndex = script.Parent.Parent
local Roact = PackageIndex:FindFirstChild("Roact")

if not Roact then
    error(string.format(
        "Failed to locate Roact inside of %q (%s)",
        PackageIndex:GetFullName(),
        PackageIndex.ClassName
    ), 2)
end

return require(Roact)
