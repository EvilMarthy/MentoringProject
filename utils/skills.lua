SKILLS = SKILLS or {}

SKILLS.skillType = {
    Block = 0,
    Bash = 1,
    WeaponThrow = 2,
    SniperFocus = 3,
    MagicMissile = 4,
    Barrier = 5,
}
SKILLS.skillList = {
    [SKILLS.skillType.Block] = {
        damageBlocked = math.random( 1, 10 ),
        onUse = function ( target )

        end
    },
    [SKILLS.skillType.Bash] = {
        damageDealt = math.random( 1, 10 ),
        onUse = function ( target )

        end
    },
}
