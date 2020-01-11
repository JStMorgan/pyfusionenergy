local pipe_bottom = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/bottom.png",
        priority = "high",
        width = 247,
        height = 286
    }
}

RECIPE {
    type = "recipe",
    name = "grease-table-mk03",
    energy_required = 10,
    enabled = false,
    ingredients = {
                {'grease-table-mk02', 1},
                --{'titanium-plate', 20},
                --{'stainless-steel', 20},
                --{'tin-plate', 20},
                {'processing-unit', 10}
            },
    results = {
        {"grease-table-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "grease-table-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/grease-table-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "e",
    place_result = "grease-table-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "grease-table-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/grease-table-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "grease-table-mk03"},
    fast_replaceable_group = "grease-table",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"grease"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1500kW",
    ingredient_count = 4,
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/left.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {-2.032, -1.0}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/left-mask.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {-2.032, -1.0},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/mid.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {0.968, -1.0}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/mid-mask.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {0.968, -1.0},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/right.png",
                width = 55,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {3.329, -1.0}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/right-mask.png",
                width = 55,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {3.329, -1.0},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.65, -4.95}, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, nil, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, nil, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.65, -4.95}, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_connections = {{type = "output", position = {0.0, 4.0}}}
        }

        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/grease-table.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/grease-table.ogg", volume = 0.85},
        apparent_volume = 2.5
    }
}
