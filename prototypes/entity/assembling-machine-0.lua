data:extend({

{
    type = "assembling-machine",
    name = "assembling-machine-0",
    icon = "__RitnMechanic__/graphics/icons/assembling-machine-0.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.0, result = "assembling-machine-0"},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 45
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__RitnMechanic__/graphics/entity/assembling-machine-0/assembling-machine-0.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2), 
        },
        {
          filename = "__RitnMechanic__/graphics/entity/assembling-machine-0/assembling-machine-0-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5.5),
        }
      }
    },
    crafting_categories = {"crafting", "basic-crafting", "advanced-crafting", "ritn-mechanics"},
    crafting_speed = 0.25,
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "assembling-machine-1",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "90kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    }
  }


  
})