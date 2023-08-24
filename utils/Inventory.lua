INVENTORY = INVENTORY or {};

-- Currency for buying/selling items 
INVENTORY.Currency = {
    Gold = 0,
    BloodTokens = 0,
    Tickets = 0,
}
-- potions that are available for consumption
INVENTORY.Potions = {
    Healing = 0,
    Mana = 0,
}
-- Components for Crafting/Alchemy 
INVENTORY.Components = {}
INVENTORY.Components.Alchemy = {
    Herbs = 0,
    Spices = 0,
    MonsterParts = 0,
}
INVENTORY.Components.Crafting = {
    Iron = 0,
    Gold = 0,
    Steel = 0,
    Leather = 0,
}
-- Pieces of Stored Gear as "string" split by type
INVENTORY.StoredGear = {}
INVENTORY.StoredGear.HEAD = {}
INVENTORY.StoredGear.ARMOR = {}
INVENTORY.StoredGear.WEAPONS = {}
-- Could be all weapons without type, but will try to implement sorting in this case for InventoryDisplay
INVENTORY.StoredGear.WEAPONS.TYPE = {
    Melee = {},
    Ranged = {},
    Magic = {},
    Shield = {},
}
INVENTORY.StoredGear.OFFHAND = {}
-- Currently equipped gear
INVENTORY.Gear = {}
INVENTORY.Gear.HEAD = ""
INVENTORY.Gear.ARMOR = ""
INVENTORY.Gear.WEAPON = ""
INVENTORY.Gear.OFFHAND = ""

-- INVENTORY Functions
INVENTORY.AddCurrency = function( curr, gain )
    if curr == "Gold" then
        INVENTORY.Currency.Gold = INVENTORY.Currency.Gold + gain;
        print(gain.." Gold has been added to your wallet. You now have a total of "..INVENTORY.Currency.Gold.." Gold.");
    elseif curr == "BloodTokens" then
        INVENTORY.Currency.BloodTokens = INVENTORY.Currency.BloodTokens + gain;
        print(gain.." Blood Tokens were added to your wallet. You now have a total of "..INVENTORY.Currency.BloodTokens.." Blood Tokens.");
    elseif curr == "Tickets" then
        INVENTORY.Currency.Tickets = INVENTORY.Currency.Tickets + gain;
        print(gain.." Tickets were added to your wallet. You now have a total of "..INVENTORY.Currency.Tickets.." Tickets.")
    end
end