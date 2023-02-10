local RitnProtoEntity = require(ritnlib.defines.class.prototype.entity)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
----------------------------------------------------------------------------

-- Update crafting category on assembling machine
local machines = 
{
  "assembling-machine-1",
  "assembling-machine-2",
  "assembling-machine-3",
}

for _, machine in pairs(machines) do    
    RitnProtoEntity(machine):addCraftingCategories("ritn-mechanics")
    RitnProtoItem(machine):changeSubgroup("production-machine-mechanic", "b[" .. machine .. "]")
end
RitnProtoItem("beacon"):changeSubgroup("production-machine-mechanic", "b[beacon]")


-- Update recipe category :

local items = {
  "storage-tank",
  "transport-belt",
  "fast-transport-belt",
  "express-transport-belt",
  "underground-belt",
  "fast-underground-belt",
  "express-underground-belt",
  "splitter",
  "fast-splitter",
  "express-splitter",
  "burner-inserter",
  "inserter",
  "long-handed-inserter",
  "fast-inserter",
  "filter-inserter",
  "stack-inserter",
  "stack-filter-inserter",
  "medium-electric-pole",
  "big-electric-pole",
  "pumpjack",
  "pump",
  "train-stop",
  "rail-signal",
  "rail-chain-signal",
  "locomotive",
  "cargo-wagon",
  "fluid-wagon",
  "artillery-wagon",
  "car",
  "tank",
  "small-lamp",
  "steam-turbine",
  "electric-mining-drill",
  "electric-furnace",
  "solar-panel",
  "substation",
  "accumulator",
  "steel-furnace",
  "assembling-machine-1",
  "assembling-machine-2",
  "assembling-machine-3",
  "nuclear-reactor",
  "heat-exchanger",
  "oil-refinery",
  "chemical-plant",
  "centrifuge",
  "beacon",
  "low-density-structure",
  "lab",
  "modular-armor",
  "power-armor",
  "power-armor-mk2",
  "battery-equipment",
  "battery-mk2-equipment",
  "bi-bio-boiler",
  "bi-solar-boiler-hidden-panel",
  "bi-bio-solar-farm",
  "bi-bio-accumulator",
  "bi-power-to-rail-pole",
  "bi-rail-wood-bridge",
  "bi-rail-wood-to-concrete",
  "bi-rail-wood",
  "bi-rail-power",
  "recipe-welding-machine-mk1",
  "recipe-welding-machine-mk2",
  "recipe-miner-mk2",
  "bi-bio-reactor",
  "bi-bio-greenhouse",
  "bi-bio-farm",
  "laser-turret",
  "flamethrower-turret",
  "artillery-turret",
  "spidertron",
  "rocket-silo",
  "bi-bio-cannon",
  "bi-cokery",
  "uranium-fuel-cell"
}

for _,item in pairs(items) do
    RitnProtoRecipe(item):changePrototype("category", "ritn-mechanics")
end


RitnProtoRecipe("blueprint"):changeSubgroup("blueprint")
RitnProtoRecipe("deconstruction-planner"):changeSubgroup("blueprint")
RitnProtoRecipe("upgrade-planner"):changeSubgroup("blueprint")
RitnProtoRecipe("blueprint-book"):changeSubgroup("blueprint")
RitnProtoRecipe("cliff-explosives"):changeSubgroup("raw-material", "k")
RitnProtoRecipe("uranium-processing"):changeSubgroup("intermediate-product", "r")
RitnProtoRecipe("storage-tank"):changeSubgroup("fluid-system")
RitnProtoRecipe("pump"):changeSubgroup("fluid-system")
RitnProtoRecipe("offshore-pump"):changeSubgroup("fluid-system")
RitnProtoRecipe("pumpjack"):changeSubgroup("fluid-system")
RitnProtoRecipe("oil-refinery"):changeSubgroup("fluid-system")
RitnProtoRecipe("chemical-plant"):changeSubgroup("fluid-system")
RitnProtoRecipe("small-electric-pole"):changeSubgroup("energy-distribution")
RitnProtoRecipe("medium-electric-pole"):changeSubgroup("energy-distribution")
RitnProtoRecipe("big-wooden-pole"):changeSubgroup("energy-distribution")
RitnProtoRecipe("huge-wooden-pole"):changeSubgroup("energy-distribution")
RitnProtoRecipe("big-electric-pole"):changeSubgroup("energy-distribution")
RitnProtoRecipe("substation"):changeSubgroup("energy-distribution")
RitnProtoRecipe("bi-wooden-pole-big"):changeSubgroup("energy-distribution")
RitnProtoRecipe("bi-wooden-pole-huge"):changeSubgroup("energy-distribution")
RitnProtoRecipe("bi-large-substation"):changeSubgroup("energy-distribution")
RitnProtoRecipe("wooden-chest"):changeSubgroup("ritn-lumberjack-items")
RitnProtoRecipe("bi-wooden-chest-large"):changeSubgroup("ritn-lumberjack-items")
RitnProtoRecipe("bi-wooden-chest-huge"):changeSubgroup("ritn-lumberjack-items")
RitnProtoRecipe("bi-wooden-chest-large"):changeSubgroup("ritn-lumberjack-items")
RitnProtoRecipe("bi-wooden-chest-giga"):changeSubgroup("ritn-lumberjack-items")
RitnProtoRecipe("ritn-large-wooden-chest"):changeSubgroup("ritn-lumberjack-items")
RitnProtoRecipe("bi-solar-boiler"):changeSubgroup("energy-2")
RitnProtoRecipe("bi-solar-boiler-hidden-panel"):changeSubgroup("energy-2")
RitnProtoRecipe("solar-panel"):changeSubgroup("energy-2")
RitnProtoRecipe("bi-bio-solar-farm"):changeSubgroup("energy-2")
RitnProtoRecipe("accumulator"):changeSubgroup("energy-2")
RitnProtoRecipe("bi-bio-accumulator"):changeSubgroup("energy-2")
RitnProtoRecipe("nuclear-reactor"):changeSubgroup("energy-2")
RitnProtoRecipe("lab"):changeSubgroup("other-machines", "a[lab]")
RitnProtoRecipe("centrifuge"):changeSubgroup("other-machines", "b[centrifuge]")
RitnProtoRecipe("rocket-silo"):changeSubgroup("other-machines", "y[rocket-silo]")
RitnProtoRecipe("bi-rail-wood"):changeSubgroup("train-transport")
RitnProtoRecipe("bi-rail-wood-to-concrete"):changeSubgroup("train-transport")
RitnProtoRecipe("bi-rail-wood-bridge"):changeSubgroup("train-transport")
RitnProtoRecipe("bi-rail-power"):changeSubgroup("train-transport")
RitnProtoRecipe("bi-power-to-rail-pole"):changeSubgroup("train-transport")
RitnProtoRecipe("engine-unit"):changeSubgroup("mechanic-products")
RitnProtoRecipe("electric-engine-unit"):changeSubgroup("mechanic-products")
RitnProtoRecipe("low-density-structure"):changeSubgroup("mechanic-products")
RitnProtoRecipe("miner_mk1"):changeSubgroup("ritn-production-miner")
RitnProtoRecipe("miner_mk2"):changeSubgroup("ritn-production-miner")
RitnProtoRecipe("bi-woodpulp"):changeSubgroup("bio-bio-farm-raw")
RitnProtoRecipe("bi-ash"):changeSubgroup("bio-bio-farm-raw")
RitnProtoRecipe("wood-charcoal"):changeSubgroup("bio-bio-farm-raw")
RitnProtoRecipe("pellet-coke"):changeSubgroup("bio-bio-farm-raw")
RitnProtoRecipe("stone-crushed"):changeSubgroup("bio-bio-farm-raw")
RitnProtoRecipe("bi-bio-greenhouse"):changeSubgroup("bio-bio-farm-raw-entity")
RitnProtoRecipe("bi-bio-farm"):changeSubgroup("bio-bio-farm-raw-entity")
RitnProtoRecipe("bi-bio-garden"):changeSubgroup("bio-bio-farm-raw-entity")
RitnProtoRecipe("bi-bio-reactor"):changeSubgroup("bio-bio-farm-raw-entity")
RitnProtoRecipe("stone-brick"):changeSubgroup("stone-process", "a[stone-process]")
RitnProtoRecipe("bi-stone-brick"):changeSubgroup("stone-process", "b[stone-process]")
RitnProtoRecipe("bi-crushed-stone-1"):changeSubgroup("stone-process", "c[stone-process]")
RitnProtoRecipe("bi-crushed-stone-2"):changeSubgroup("stone-process", "d[stone-process]")
RitnProtoRecipe("bi-crushed-stone-3"):changeSubgroup("stone-process", "e[stone-process]")
RitnProtoRecipe("bi-crushed-stone-4"):changeSubgroup("stone-process", "f[stone-process]")
RitnProtoRecipe("bi-crushed-stone-5"):changeSubgroup("stone-process", "g[stone-process]")

RitnProtoSubgroup("belt"):changeGroup("ritn-mechanic", "a0")
RitnProtoSubgroup("inserter"):changeGroup("ritn-mechanic", "a1")
RitnProtoSubgroup("train-transport"):changeGroup("ritn-mechanic")
RitnProtoSubgroup("transport"):changeGroup("combat")
RitnProtoSubgroup("energy"):changeGroup("ritn-mechanic", "b1")
RitnProtoSubgroup("extraction-machine"):changeGroup("miner")
RitnProtoSubgroup("production-machine"):changeGroup("ritn-mechanic")
RitnProtoSubgroup("ritn-disassemble"):changeGroup("intermediate-products")
RitnProtoSubgroup("ritn-miner"):changeGroup("miner")
RitnProtoSubgroup("terrain"):changeGroup("miner")
RitnProtoSubgroup("circuit-network"):changeGroup("ritn-electronic", "k")

RitnProtoRecipe("bi-power-to-rail-pole"):changePrototype("order", "b[steam-power]-a[boiler]-a[bi-bio-boiler]")
RitnProtoRecipe("bi-bio-boiler"):changePrototype("order", "b[steam-power]-a[boiler]-a[bi-bio-boiler]")
RitnProtoRecipe("small-electric-pole"):changePrototype("order", "a[electric-pole]")
RitnProtoRecipe("recipe_big_wooden_pole"):changePrototype("order", "b[electric-pole]")
RitnProtoRecipe("medium-electric-pole"):changePrototype("order", "c[electric-pole]")
RitnProtoRecipe("recipe_huge_wooden_pole"):changePrototype("order", "d[electric-pole]")
RitnProtoRecipe("substation"):changePrototype("order", "e[electric-pole]")

-- chemical
RitnProtoRecipe("shale-oil"):changeSubgroup("ritn-petrole", "a")
RitnProtoRecipe("coal-liquefaction"):changeSubgroup("ritn-petrole", "b")
RitnProtoRecipe("light-oil-cracking"):changeSubgroup("ritn-petrole", "c")
RitnProtoRecipe("heavy-oil-cracking"):changeSubgroup("ritn-petrole", "d")
RitnProtoRecipe("lubricant"):changeSubgroup("ritn-petrole", "e")
RitnProtoRecipe("solid-fuel-from-heavy-oil"):changeSubgroup("ritn-deriv-petrole", "a")
RitnProtoRecipe("solid-fuel-from-light-oil"):changeSubgroup("ritn-deriv-petrole", "b")
RitnProtoRecipe("solid-fuel-from-petroleum-gas"):changeSubgroup("ritn-deriv-petrole", "c")
RitnProtoRecipe("plastic-bar"):changeSubgroup("ritn-deriv-petrole", "h")
RitnProtoRecipe("sulfur"):changeSubgroup("ritn-deriv-petrole", "i0")
RitnProtoRecipe("sulfuric-acid"):changeSubgroup("ritn-deriv-petrole", "j")
RitnProtoRecipe("battery"):changeSubgroup("ritn-chemical-products")
RitnProtoRecipe("explosives"):changeSubgroup("ritn-chemical-products")
RitnProtoRecipe("cliff-explosives"):changeSubgroup("ritn-chemical-products")
RitnProtoRecipe("bi-bio-reactor"):changeSubgroup("fluid-system", "f")


RitnProtoSubgroup("science-pack"):changeGroup("ritn-chemical")
RitnProtoSubgroup("ritn-glass"):changeGroup("ritn-chemical", "zzz")
RitnProtoSubgroup("fluid-system"):changeGroup("ritn-chemical", "c")
RitnProtoSubgroup("bio-bio-farm-intermediate-product"):changeGroup("ritn-chemical")
RitnProtoSubgroup("bio-bio-fuel-fluid"):changeGroup("ritn-chemical")
RitnProtoSubgroup("raw-material"):changeGroup("smith")

--rocket silo controlled
RitnProtoRecipe("smart-rocket-silo-blue"):changeSubgroup("other-machines", "z[rocket-silo]")