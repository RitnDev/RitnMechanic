data:extend({


        --assembling-machine-0
        {

            type = "item",
            name = "assembling-machine-0",
            icon = "__RitnMechanic__/graphics/icons/assembling-machine-0.png",
            icon_size = 32,
            enabled = true,
            subgroup = "production-machine-mechanic",
            order = "a",
            place_result = "assembling-machine-0",
            stack_size = 50
        },
        {
            --recipe
            type = "recipe",
            name = "recipe-assembling-machine-0",
            enabled = true,
            ingredients =
                {
                    {type="item", name="copper-cable", amount=4},
                    {type="item", name="iron-gear-wheel", amount=2},
                    {type="item", name="iron-plate", amount=5},
                },
            result = "assembling-machine-0"
        }


})

