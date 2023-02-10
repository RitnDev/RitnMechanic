local RitnEvent = require(ritnlib.defines.class.luaClass.event)
----------------------------------------------------------------
local function updateDiscoScience()
    RitnEvent.setIngredientColor("mechanic-science-pack", {r = 1, g = 0.1, b = 0.1})
end
----------------------------------------------------------------
script.on_configuration_changed(updateDiscoScience)
script.on_init(updateDiscoScience)
----------------------------------------------------------------
