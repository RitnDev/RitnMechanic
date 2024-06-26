-- module.disco-science
----------------------------------------------------------------
local function updateDiscoScience()
    RitnLibEvent.setIngredientColor("mechanic-science-pack", {r = 1, g = 0.1, b = 0.1})
end

----------------------------------------------------------------
script.on_configuration_changed(updateDiscoScience)
script.on_init(updateDiscoScience)
----------------------------------------------------------------
