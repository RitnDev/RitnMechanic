local pack = util.table.deepcopy(data.raw["tool"]["automation-science-pack"])

if pack.icon ~= nil then
    icons = 
    {
        {
        icon = pack.icon,
        icon_size = pack.icon_size,
        icon_mipmaps = pack.icon_mipmaps,
        },
    }
else
    icons = 
    {
        {
        icon = "__base__/graphics/icons/automation-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
        },
    }
end

data:extend({

    --electronic-science-pack
    {
        --item
        type = "tool",
        name = "mechanic-science-pack",
        icons = icons,
        subgroup = "science-pack",
        order = "a-b-a",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "mechanic-science-pack",
        energy_required = 5,
        enabled = true,
        ingredients =
        {
            {type="item", name="stone-furnace", amount=2},
            {type="item", name="offshore-pump", amount=2},

        },
        result = "mechanic-science-pack",
        result_count = 1,
        crafting_machine_tint = --Rouge
        {
            primary = {r = 1.000, g = 0.0958, b = 0.0958, a = 1.000},
            secondary = {r = 1.000, g = 0.0852, b = 0.172, a = 1.000},
            tertiary = {r = 1.000, g = 0.0869, b = 0.0597, a = 1.000},
            quaternary = {r = 1.000, g = 0.1, b = 0.19, a = 1.000},
        },
    }


})