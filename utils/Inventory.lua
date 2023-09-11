INVENTORY = INVENTORY or {};

-- enums for INV
INVENTORY.CurrencyType = {
    Coins = 0,
    BloodTokens = 1,
    Tickets = 2,
}
INVENTORY.PotionType = {
    Healing = 0,
    Mana = 1,
}
INVENTORY.CraftingMatType = {
    Iron = 0,
    Gold = 1,
    Steel = 2,
    Leather = 3,
}
-- Currency for wallet/inv
INVENTORY.Currency = {
    [INVENTORY.CurrencyType.Coins] = {
        value = 0,
        onGainCallback = function( gain, currencyType )
            print(gain.." Coins were been added to your wallet. You now have a total of "..INVENTORY.Currency[currencyType].value.." Coins.");
        end,
        onInventoryDisplay = function( currencyType )
            print("You currently have "..INVENTORY.Currency[currencyType].value.." "..INVENTORY.Currency[currencyType].." in your wallet.");
        end,
    },
    [INVENTORY.CurrencyType.BloodTokens] = {
        value = 0,
        onGainCallback = function( gain, currencyType )
            print(gain.." Blood Tokens were added to your wallet. You now have a total of "..INVENTORY.Currency[currencyType].value.." Blood Tokens.");
        end,
        onInventoryDisplay = function( currencyType )
            print("You currently have "..INVENTORY.Currency[currencyType].value.." "..INVENTORY.Currency[currencyType].." in your wallet.")
        end,
    },
    [INVENTORY.CurrencyType.Tickets] = {
        value = 0,
        onGainCallback = function( gain, currencyType )
            print(gain.." Tickets were added to your wallet. You now have a total of "..INVENTORY.Currency[currencyType].value.." Tickets.");
        end,
        onInventoryDisplay = function( slotType )
            print("You currently have "..INVENTORY.Currency[slotType].value.." "..INVENTORY.Currency[slotType].." in your wallet.")
        end,
    }
}
-- potions that are available for consumption
INVENTORY.Potions = {
    [INVENTORY.PotionType.Healing] = {
        value = 0,
        onGainCallback = function( gain, potionType )
            print(gain.." were added to your inventory. You currently have "..INVENTORY.Potions[potionType].value.." Healing potions.");
        end,
        onInventoryDisplay = function( slotType )
            print("You currently have "..INVENTORY.Potions[slotType].value.." Healing potions in your inventory.")
        end,
    },
    [INVENTORY.PotionType.Mana] = {
        value = 0,
        onGainCallback = function( gain, potionType )
            print(gain.." were added to your inventory. You currently have "..INVENTORY.Potions[potionType].value.." Mana potions");
        end,
        onInventoryDisplay = function( slotType )
            print("You currently have "..INVENTORY.Potions[slotType].value.." "..INVENTORY.PotionType[slotType].." in your inventory.")
        end,
    },
}
-- Components for Crafting/Alchemy 
INVENTORY.Components = {}
INVENTORY.Components.Alchemy = {
    Herbs = 0,
    Spices = 0,
    MonsterParts = 0,
}
-- Pieces of Stored Gear as "string" split by type
INVENTORY.StoredGear = {};
INVENTORY.StoredGear.HEAD = {};
INVENTORY.StoredGear.ARMOR = {};
INVENTORY.StoredGear.WEAPONS = {};
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
-- Grants


INVENTORY.AddCurrency = function( currencyType, gain )
    local currencyData = INVENTORY.Currency[currencyType];
    if currencyData then
        currencyData.value = currencyData.value + gain;

        if currencyData.onGainCallback then
            currencyData.onGainCallback(gain, currencyType);
        end
    end
end

INVENTORY.AddPotions = function( potionType, amount )
    local potionData = INVENTORY.Potions[potionType];
    if potionData then
        potionData.value = potionData.value + amount;

        if potionData.onGainCallback then
            potionData.onGainCallback(amount, potionType);
        end
    end
end

INVENTORY.DisplayInventorySlot = function( containerType )
    local containerData = INVENTORY[containerType]
    if containerData then
        if containerData.onInventoryDisplay then
            containderData.onInventoryDisplay( containerType )
        end
    end
end

INVENTORY.AddCurrency(INVENTORY.CurrencyType.BloodTokens, 10)
INVENTORY.AddPotions(INVENTORY.PotionType.Mana, 10)
INVENTORY.DisplayInventorySlot(INVENTORY.PotionType.Mana)
