local RitnProtoGroup = require(ritnlib.defines.class.prototype.group)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
local RitnProtoCategory = require(ritnlib.defines.class.prototype.category)
------------------------------------------------------

-- ITEM GROUP
RitnProtoGroup:extend("miner", "a-b",
  "__RitnMechanic__/graphics/item-group/miner.png", 385
)
RitnProtoGroup:extend("ritn-mechanic", "e-a",
  "__RitnMechanic__/graphics/item-group/mechanic.png", 385
)
RitnProtoGroup:extend("ritn-chemical", "f-a",
  "__RitnMechanic__/graphics/item-group/chemical.png", 385
)


--ITEM SUBGROUPS LUMBERJACK
RitnProtoSubgroup:extend("wood-storage", "lumberjack", "a-aa")
RitnProtoSubgroup:extend("wood-energy-distribution", "lumberjack", "c")
RitnProtoSubgroup:extend("wooden-terrain", "lumberjack", "z")

--ITEM SUBGROUPS MINER
RitnProtoSubgroup:extend("ritn-production-miner", "miner", "a")
RitnProtoSubgroup:extend("stone-process", "miner", "d")

--ITEM SUBGROUPS CHEMICAL
RitnProtoSubgroup:extend("ritn-petrole", "ritn-chemical", "a")
RitnProtoSubgroup:extend("ritn-deriv-petrole", "ritn-chemical", "b")
RitnProtoSubgroup:extend("ritn-chemical-products", "ritn-chemical", "f")

--ITEM SUBGROUPS
RitnProtoSubgroup:extend("production-machine-mechanic", "ritn-mechanic", "a2")
RitnProtoSubgroup:extend("fluid-system", "ritn-mechanic", "b0")
RitnProtoSubgroup:extend("energy-2", "ritn-mechanic", "b2")
RitnProtoSubgroup:extend("other-machines", "ritn-mechanic", "c")
RitnProtoSubgroup:extend("energy-distribution", "ritn-mechanic", "d")
RitnProtoSubgroup:extend("rails-signal", "ritn-mechanic", "e")
RitnProtoSubgroup:extend("mechanic-products", "intermediate-products", "f")
RitnProtoSubgroup:extend("ritn-disassemble", "ritn-mechanic", "z-a-a")
RitnProtoSubgroup:extend("blueprint", "intermediate-products", "00a")


--RECIPE CATEGORY
RitnProtoCategory:extend("ritn-mechanics")
