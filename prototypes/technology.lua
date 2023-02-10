data:extend({


{
    --mechanic-science-pack
--
      type = "technology",
      name = "basic-assembly",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256, icon_mipmaps = 4,
      effects = {
        {type = "unlock-recipe", recipe = "assembling-machine-1"},
      },
      unit = {
        count = 10,
        ingredients = {{"mechanic-science-pack", 1}},
        time = 10
      }

}


})
