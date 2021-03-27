return function()
    local mergeDeep = require(script.Parent.mergeDeep)

    it("merges tables", function()
        local new = mergeDeep({ hello = "world" }, { hello = "roblox" })

        expect(type(new)).to.equal("table")
        expect(new.hello).to.equal("roblox")
    end)

    it("ignores non-table arguments", function()
        local new = nil

        expect(function()
            new = mergeDeep(
                { hello = "world" },
                true,
                false,
                { hello = "roblox" },
                1,
                Color3.new(),
                { hello = "goodbye" }
            )
        end).never.to.throw()

        expect(type(new)).to.equal("table")
        expect(new.hello).to.equal("goodbye")
    end)
end
