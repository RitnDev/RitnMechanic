local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
-----------------------------------------------------------------

--Disabled Technology
RitnProtoTech("automation"):disable()
RitnProtoTech("steel-processing"):disable(true)

--Add Recipe
RitnProtoTech("basic-assembly"):addRecipe("steel-chest")

--Remove prerequisite :
RitnProtoTech("automation-2"):removePrerequisite("automation")
RitnProtoTech("circuit-network"):removePrerequisite("automation")
RitnProtoTech("solar-energy"):removePrerequisite("automation")
RitnProtoTech("electric-energy-distribution-1"):removePrerequisite("automation")
RitnProtoTech("fast-inserter"):removePrerequisite("automation")
RitnProtoTech("bi-tech-coal-processing-1"):removePrerequisite("steel-processing")

--Add prerequisite :
RitnProtoTech("turrets"):addPrerequisite("basic-assembly")
RitnProtoTech("military"):addPrerequisite("basic-assembly")
RitnProtoTech("electronic-science-pack"):addPrerequisite("basic-assembly")
RitnProtoTech("bi-tech-coal-processing-1"):addPrerequisite("basic-assembly")
RitnProtoTech("ritn-tech-miner-mk1"):addPrerequisite("basic-assembly")
RitnProtoTech("automation-2"):addPrerequisite("basic-assembly")
RitnProtoTech("solar-energy"):addPrerequisite("basic-assembly")
RitnProtoTech("engine"):addPrerequisite("basic-assembly")
RitnProtoTech("advanced-material-processing"):addPrerequisite("basic-assembly")
RitnProtoTech("electric-energy-distribution-1"):addPrerequisite("basic-assembly")
RitnProtoTech("fluid-handling"):addPrerequisite("basic-assembly")

--Remove pack
RitnProtoTech("steel-axe"):removePack("automation-science-pack")
RitnProtoTech("toolbelt"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-3"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-4"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-5"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-6"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-7"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-8"):removePack("automation-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-9"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-3"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-4"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-5"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-6"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-7"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-8"):removePack("automation-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-9"):removePack("automation-science-pack")

-- add pack
RitnProtoTech("toolbelt"):addPack("lumberjack-science-pack")
RitnProtoTech("toolbelt"):addPack("miner-science-pack")
RitnProtoTech("shale-oil"):addPack("electronic-science-pack")
RitnProtoTech("sulfur-processing"):addPack("miner-science-pack")
RitnProtoTech("sulfur-processing"):addPack("chemical-science-pack")
RitnProtoTech("plastics"):addPack("chemical-science-pack")
RitnProtoTech("flammables"):addPack("lumberjack-science-pack")
RitnProtoTech("advanced-electronics-2"):addPack("mechanic-science-pack")
RitnProtoTech("rocket-fuel"):addPack("lumberjack-science-pack")
RitnProtoTech("rocket-fuel"):addPack("miner-science-pack")
RitnProtoTech("oil-processing"):addPack("chemical-science-pack")

-- replace pack
RitnProtoTech("stone-wall"):replacePack("automation-science-pack", "miner-science-pack")
RitnProtoTech("gate"):replacePack("automation-science-pack", "miner-science-pack")
RitnProtoTech("military-3"):replacePack("lumberjack-science-pack", "chemical-science-pack")
RitnProtoTech("rocket-silo"):replacePack("military-science-pack", "lumberjack-science-pack")

-- set count pack 
RitnProtoTech("explosives"):setCount(200)
RitnProtoTech("modules"):setCount(250)
RitnProtoTech("speed-module"):setCount(250)
RitnProtoTech("productivity-module"):setCount(250)
RitnProtoTech("effectivity-module"):setCount(250)
RitnProtoTech("speed-module-2"):setCount(300)
RitnProtoTech("productivity-module-2"):setCount(300)
RitnProtoTech("effectivity-module-2"):setCount(300)
RitnProtoTech("speed-module-3"):setCount(500)
RitnProtoTech("productivity-module-3"):setCount(500)
RitnProtoTech("effectivity-module-3"):setCount(500)
RitnProtoTech("toolbelt"):setCount(100)
RitnProtoTech("gate"):setCount(75)
RitnProtoTech("effect-transmission"):setCount(175)
RitnProtoTech("military-4"):setCount(300)
RitnProtoTech("sulfur-processing"):setCount(200)
RitnProtoTech("plastics"):setCount(200)

