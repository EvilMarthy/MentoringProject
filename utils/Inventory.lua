Inventory = Inventory or {}

-- Currency for buying/selling items 
Inventory.CURRENCY = {
    Gold = 0,
    BloodTokens = 0,
    Tickets = 0
}
-- potions that are available for consumption
Inventory.POTIONS = {
    Healing = 0,
    Mana = 0
}
-- Components for Crafting/Alchemy 
Inventory.COMPONENTS = {}
Inventory.COMPONENTS.ALCHEMY = {
    Herbs = 0,
    Spices = 0,
    MonsterParts = 0,
}
Inventory.COMPONENTS.CRAFTING = {
    Iron = 0,
    Gold = 0,
    Steel = 0,
    Leather = 0,
}
-- Pieces of Stored Gear as "string" split by type
Inventory.STOREDGEAR = {}
Inventory.STOREDGEAR.HEAD = {}
Inventory.STOREDGEAR.ARMOR = {}
Inventory.STOREDGEAR.WEAPONS = {}
-- Could be all weapons without type, but will try to implement sorting in this case for InventoryDisplay
Inventory.STOREDGEAR.WEAPONS.TYPE = {
    Melee = {},
    Ranged = {},
    Magic = {},
    Shield = {}
}
Inventory.STOREDGEAR.OFFHAND = {}