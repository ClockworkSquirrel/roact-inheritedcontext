return function()
    local copyDeep = require(script.Parent.copyDeep)

    it("creates a shallow copy", function()
        local original = {}
        local copy = copyDeep(original)

        expect(copy).never.to.equal(original)
    end)

    it("creates a deep copy", function()
        local original = {
            nested = {
                deepNested = {
                    number = 1,
                },
            },
        }

        local copy = copyDeep(original)

        expect(copy).never.to.equal(original)

        expect(copy.nested).to.be.ok()
        expect(copy.nested).never.to.equal(original.nested)

        expect(copy.nested.deepNested).to.be.ok()
        expect(copy.nested.deepNested).never.to.equal(original.nested.deepNested)

        expect(copy.nested.deepNested.number).to.be.ok()
        expect(copy.nested.deepNested.number).to.equal(original.nested.deepNested.number)
    end)
end
