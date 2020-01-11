RECIPE {
    type = "recipe",
    name = "mixer-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"storage-tank", 1}, --pyindustry py-tank-8000
        {"chemical-plant", 2},
        {"iron-plate", 30}, --updated-bob titanium-plate
        {"steel-plate", 50},
        {"iron-gear-wheel", 30} --updated-bob titanium-bearing
    },
    results = {
        {"mixer-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "mixer-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "g",
    place_result = "mixer-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "mixer-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "mixer-mk01"},
    fast_replaceable_group = "mixer",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"mixer"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "450kW",
    ingredient_count = 10,
    animation = {
	layers = {
	{
        filename = "__pyfusionenergygraphics__/graphics/entity/mixer/mixer.png",
        width = 246,
        height = 233,
        frame_count = 64,
        line_length = 8,
        animation_speed = 0.4,
        shift = {0.312, -0.156}
    },
	{
        filename = "__pyfusionenergygraphics__/graphics/entity/mixer/mixer-mask.png",
        width = 246,
        height = 233,
        frame_count = 64,
        line_length = 8,
        animation_speed = 0.4,
        shift = {0.312, -0.156},
		tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
    }
	}
	},
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, -4.0}}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -4.0}}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 4.0}}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        },
        --South3
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/mixer.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/mixer.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
