-- INITIALIZE
-----------------------------------------------------------------
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
-----------------------------------------------------------------
-- Modif Jeu de base :

--Replace Pack Science (Jeu de base - Vanilla)
for _, tech in pairs(data.raw.technology) do
    RitnProtoTech(tech.name):replacePack("automation-science-pack", "mechanic-science-pack")
end

RitnProtoTech:removePackLab("automation-science-pack")
RitnProtoRecipe("automation-science-pack"):disable("tool")
 

-- Fixes prerequises others mods actives
for _,tech in pairs(data.raw.technology) do 
    if tech.prerequisites ~= nil then
        if tech.prerequisites["automation"] ~= nil then
            RitnProtoTech(tech.name):removePrerequisite("automation"):addPrerequisite("basic-assembly")
        end
        RitnProtoTech(tech.name):removePrerequisite("steel-processing")
    end 
end

RitnProtoTech("basic-assembly"):addPrerequisite("tech-electronics-production")
