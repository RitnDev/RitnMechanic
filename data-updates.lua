-- INITIALIZE
-----------------------------------------------------------------
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
-----------------------------------------------------------------

--Update Vanilla
RitnProtoTech("rocket-silo"):addPack("military-science-pack")
RitnProtoTech("space-science-pack"):addPack("military-science-pack")

--Update RitnGlass
RitnProtoRecipe("recipe-electric-mining-drill"):changePrototype("category", "ritn-mechanics")
RitnProtoRecipe("recipe-ritn-chemical-plant"):changePrototype("category", "ritn-mechanics")
RitnProtoItem("ritn-electric-mining-drill"):changeSubgroup("extraction-machine", "aa")
RitnProtoItem("ritn-chemical-plant"):changeSubgroup("fluid-system", "dd")

-- update RitnLumberjack
RitnProtoRecipe("bi-sulfur"):changeSubgroup("ritn-deriv-petrole", "i1")
RitnProtoTech("bi-tech-advanced-biotechnology"):removePrerequisite("automation")
