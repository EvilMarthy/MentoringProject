--[[
package.searchers = {
    [1] = "D:/ExportToNewPc/Codingthings/lua/TextBasedRPG/?.lua",
    [2] = "D:/ExportToNewPc/Codingthings/lua/TextBasedRPG/utils/?.lua"
}
--]]
package.path = "D:/ExportToNewPc/Codingthings/lua/TextBasedRPG/?.lua;D:/ExportToNewPc/Codingthings/lua/TextBasedRPG/utils/?.lua"
require("Character")
require("ModLoader")
require("Skills")

local marthy = Character:new({
    name = "Marthy",
    class = "Fighter",
    id = 1})
print("New character "..marthy.name.." created")
-- Mod:SaveModule(marthy,  "saves/"..marthy.name..marthy.id..".lua")
--[[
local saveData = Mod:LoadSaveFile("Marthy1", "./saves/")
print(table.concat(saveData, ","))
--]]
--[[
marthy:addSkills("fireball")
marthy:addSkills("fireball")
print(table.concat(marthy.Skills))
--]]