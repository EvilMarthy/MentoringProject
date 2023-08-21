-- Creating Class
Character = {
    name = "",
    class = "",
    id = 0,
    Stats = {
        strength = 10,
        agility = 10,
        intelligence = 10,
        charisma = 10,
        vitality = 10
    },
    Skills = {},
}

-- Adding required modules
require("skills") -- for battle related functions (deprecated, moving skills to skills)


-- Adding rewards functions
function Character:addMoney(gain)
    Character.Inventory.money = Character.Inventory.money + gain
    print("The amount of money "..self.name.." currently has is: "..self.Inventory.money)
end

function Character:addSkills(skill)
    for i, v in pairs(self.Skills) do
        local i = i + 1
        if v == skill then
            print(skill.." is already learned")
            return i
        end
        return nil
    end
    table.insert(self.Skills, skill)
end

-- Inventory related  
function Character:showInventory()
    if self.Inventory then
        for k, v in pairs(self.Inventory) do
            if type(k) == "table" then
                print(table.concat(k, ","))
            end
        end
    else
        print("Seems like the inventory is either empty or there was an issue with the function.")
    end
end

-- object constructor
function Character:new(t)
    t = t or {}
    setmetatable(t, self)
    self.__index = self
    return t
end
