-- Fighter, Rogue, Mage
Classes = Classes or {}
Classes.__index = Classes
Classes.STATS = {
    Strength = "",
    Dexterity = "",
    Vitality = "",
    Intelligence = ""
}
Classes.SKILLS = {}

-- Fighter Class attributes
Fighter = {}
Fighter.__index = Fighter
Fighter.STATS = {
    Strength = 8,
    Dexterity = 2,
    Vitality = 7,
    Intelligence = 3
}
Fighter.SKILLS = {
    Bash = true,
    Block = true
}
setmetatable(Fighter, Classes)

-- Rogue Class attributes
Rogue = {}
Rogue.__index = Rogue
Rogue.STATS = {
    Strength = 5,
    Dexterity = 8,
    Vitality = 5,
    Intelligence = 2
}
Rogue.SKILLS = {
    WeaponThrow = true,
    SniperFocus = true
}
setmetatable(Rogue, Classes)

-- Mage Class attributes
Mage = {}
Mage.__index = Mage
Mage.STATS = {
    Strength = 2,
    Dexterity = 3,
    Vitality = 5,
    Intelligence = 10
}
Mage.SKILLS = {
    MagicMissile = true,
    Barrier = true
}
setmetatable(Mage, Classes)