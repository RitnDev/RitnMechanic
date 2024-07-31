-- INITIALIZE
-----------------------------------------------------------------
if not ritnlib then require("__RitnLib__/defines") end
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
-----------------------------------------------------------------
if not ritnmods then ritnmods = {} end
if not ritnmods.mechanic then ritnmods.mechanic = {
    bio = false,
    Dectorio = false,
    LargerLamp = false,
    commuLogo = false,
    vehicleWagon = false,
    ConstructionDrone = false,
    dectorio = false,
} end

-- # UPDATE BASE GAME (VANILLA) #
-- Disable recipe start game
--> Control.lua
----------------------------------------
--Requires :
require ("prototypes.category")
require ("prototypes.items")
require ("prototypes.technology")
----------------------------------------

--Add Mechanic-science-pack
RitnProtoTech:addPackLab("mechanic-science-pack", 3)

--Change Ingredients
local assemblingMK1 = RitnProtoRecipe("assembling-machine-1")
assemblingMK1:removeIngredient("electronic-circuit")
assemblingMK1:addIngredient({type = "item", name = "copper-cable", amount = 5})
assemblingMK1:addIngredient({type = "item", name = "assembling-machine-0", amount = 1})
assemblingMK1:setIngredient({type = "item", name = "iron-plate", amount = 6})

RitnProtoRecipe("chemical-plant"):addIngredient({type = "item", name = "ritn-chemical-plant", amount = 1})

-- Update category
require("prototypes.update-category")

--Remove Recipe Unlock
RitnProtoTech("electronic-science-pack"):removeRecipe("assembling-machine-1")

-- change stack size
RitnProtoItem("offshore-pump"):changePrototype("stack_size", 50)
RitnProtoItem("stone-furnace"):changePrototype("stack_size", 100)

-- active steel plate
RitnProtoRecipe("steel-plate"):setEnabled(true)
------
RitnProtoTech("basic-assembly"):addRecipe("repair-pack")
RitnProtoRecipe("repair-pack"):setEnabled(false)

-- Update Technology
require("prototypes.update-technology")

------------------------------------------------------------------------------------------

-- active options
if mods["CommuLogo"] then ritnmods.mechanic.commuLogo = true end
if mods["VehicleWagon2"] then ritnmods.mechanic.vehicleWagon = true end
if mods["Bio_Industries"] then ritnmods.mechanic.bio = true end
if mods["DeadlockLargerLamp"] then ritnmods.mechanic.LargerLamp = true end 
if mods["textplates"] then ritnmods.mechanic.textplate = true end 
if mods["Updated_Construction_Drones"] then ritnmods.mechanic.ConstructionDrone = true end 
if mods["Dectorio"] then ritnmods.mechanic.dectorio = true end


-- Mod Actif : RitnTeleportation
RitnProtoRecipe("recipe-ritn-portal"):changePrototype("category", "crafting")
RitnProtoSubgroup("teleportation"):changeGroup("ritn-electronic")
RitnProtoRecipe("recipe-ritn-portal"):changePrototype("order", "p[portal]")


-- Mod Actif : CommuLogo
RitnProtoTech("commulogo-tech"):removePack("automation-science-pack"):addPack("mechanic-science-pack")


-- Mod Actif : VehicleWagon2
RitnProtoRecipe("vehicle-wagon"):changePrototype("category", "ritn-mechanics")
RitnProtoRecipe("winch"):changePrototype("category", "ritn-mechanics")



-- Mod Actif : DeadlockLargerLamp
RitnProtoRecipe("deadlock-copper-lamp"):changeSubgroup("tool", "a-a-a")
RitnProtoRecipe("deadlock-copper-lamp"):changePrototype("category", "ritn-smithing")


-- Mod Actif : Updated_Construction_Drones
RitnProtoRecipe("Construction Drone"):changeSubgroup("ritn-logistic-network")


-- Mod Actif : beautiful_bridge_railway
RitnProtoRecipe("bbr-rail-wood"):changePrototype("category", "ritn-mechanics")
RitnProtoRecipe("bbr-rail-iron"):changePrototype("category", "ritn-mechanics")
RitnProtoRecipe("bbr-rail-brick"):changePrototype("category", "ritn-mechanics")

-- Mod Actif : Dectorio
RitnProtoRecipe("dect-small-lamp-glow"):changePrototype("category", "ritn-mechanics")
RitnProtoRecipe("dect-lawnmower"):changePrototype("category", "ritn-mechanics")

RitnProtoSubgroup("landscaping"):changeGroup("miner")
RitnProtoSubgroup("landscaping-rocks"):changeGroup("miner")
RitnProtoSubgroup("landscaping-earthworks"):changeGroup("ritn-mechanic")

RitnProtoSubgroup("flooring-basic"):changeGroup("miner")
RitnProtoSubgroup("flooring-painted"):changeGroup("miner")
RitnProtoSubgroup("flooring-painted-refined"):changeGroup("miner")
RitnProtoSubgroup("flooring-painted-refined-base"):changeGroup("miner")