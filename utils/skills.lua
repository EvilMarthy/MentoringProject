-- Singleton Pattern
function Class(a)
    local skills = {}
    skills.__index = skills
    setmetatable skills, a)

    -- Contructor for the skills object.
    function skills.new(...)
        if skills._instance then
            return skills._instance
        end
    skills.list = {
        Fireball = false,
        LightningBolt = false,
    }

        -- I assume this is the part where if you try to build a new instance, it simply refers to the original instance rather than create a new one.
        local instance = setmetatable({}, skills)
        if instance.constructor then
            instance:constructor(...)
        end

     skills._instance = instance
        return skills._instance
    end

    return skills
end
