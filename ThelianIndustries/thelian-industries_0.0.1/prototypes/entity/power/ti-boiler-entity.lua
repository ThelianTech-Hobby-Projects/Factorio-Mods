--[[ Steam Boilers/Generators Data Table
Legend: T = Temp, PC = Power Consumed, FR = Flow Rate
    Tier 1: T = 215C, PC = 2.4MW, FR = 60/s
    Tier 2: T = 415C, PC = 4.8MW, FR = 60/s
    Tier 3: T = 615C, PC = 7.2MW, FR = 60/s
    Tier 4: T = 815C, PC = 9.6MW, FR = 60/s
    SE Gas: T = 440C, PC = 5.1MW, FR = 60/s
    HE Gas: T = 440C, PC = 10.2MW, FR = 120/s

    Formula: PC / (.2kJ * T+15) = FR
    Tier 1: 2.4MW / (0.2kj * 215C) = 60/tick

    
    require("__thelian-lib__/data/catagories/fuel-cat")

]]--1

data.raw.boiler.boiler.fast_replaceable_group = "boiler"
data:extend({
    util.merge({
        data.raw.boiler.boiler,
        {
            name = "le-boiler",
            icon = "__base__/graphics/icons/boiler.png",
            icon_size = 64,
            --localised_description = { "entity-description.le-boiler" },
            minable = { mining_time = 0.5, result = "le-boiler" },
            next_upgrade = "me-boiler",
            max_health = 200,
            target_temperature = 215,
            energy_consumption = "2.4MW",
            fast_replaceable_group = "boiler",
            energy_source = {
            --fuel_category = "combustible-solid-fuels",
            emissions_per_minute = 20,
            },
        },
    }),
    util.merge({
        data.raw.boiler.boiler,
        {
            name = "me-boiler",
            icon = "__base__/graphics/icons/boiler.png",
            icon_size = 64,
            minable = { mining_time = 0.5, result = "me-boiler" },
            next_upgrade = "he-boiler",
            max_health = 200,
            target_temperature = 415,
            energy_consumption = "4.8MW",
            fast_replaceable_group = "boiler",
            energy_source = {
            --fuel_category = "combustible-solid-fuels",
            emissions_per_minute = 20,
            },
        },
    }),
    util.merge({
        data.raw.boiler.boiler,
        {
            name = "he-boiler",
            icon = "__base__/graphics/icons/boiler.png",
            icon_size = 64,
            minable = { mining_time = 0.5, result = "he-boiler" },
            next_upgrade = "se-boiler",
            max_health = 200,
            target_temperature = 615,
            energy_consumption = "7.2MW",
            fast_replaceable_group = "boiler",
            energy_source = {
            --fuel_category = "combustible-solid-fuels",
            emissions_per_minute = 20,
            },
        },
    }),
    util.merge({
        data.raw.boiler.boiler,
        {
            name = "se-boiler",
            icon = "__base__/graphics/icons/boiler.png",
            icon_size = 64,
            minable = { mining_time = 0.5, result = "se-boiler" },
            max_health = 200,
            target_temperature = 815,
            energy_consumption = "9.6MW",
            fast_replaceable_group = "boiler",
            energy_source = {
            --fuel_category = "combustible-solid-fuels",
            emissions_per_minute = 20,
            },
        },
    }),
    -- Fluid Burning
    util.merge({
        data.raw.boiler.boiler,
        {
            name = "s-gas-boiler",
            icon = "__base__/graphics/icons/boiler.png",
            icon_size = 64,
            minable = { mining_time = 0.5, result = "s-gas-boiler" },
            max_health = 300,
            target_temperature = 440,
            energy_consumption = "5.1MW",
            next_upgrade = "he-gas-boiler",
        }
    }),
    util.merge({
        data.raw.boiler.boiler,
        {
            name = "he-gas-boiler",
            icon = "__base__/graphics/icons/boiler.png",
            icon_size = 64,
            minable = { mining_time = 0.5, result = "he-gas-boiler" },
            max_health = 300,
            target_temperature = 440,
            energy_consumption = "10.2MW",
        }
    }),
})
data.raw.boiler["s-gas-boiler"].energy_source = {
    type = "fluid",
    emissions_per_minute = 30,
    fluid_box = {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {type = "input", position = { 0, 1.5}},
        },
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        production_type = "input",
    },
    --fuel_category = "combustible-liquid-fuels",
    burns_fluid = true,
    scale_fluid_usage = true,
    smoke = {
        {
            name = "smoke",
            north_position = util.by_pixel(-38, -47.5),
            south_position = util.by_pixel(38.5, -32),
            east_position = util.by_pixel(20, -70),
            west_position = util.by_pixel(-19, -8.5),
            frequency = 15,
            starting_vertical_speed = 0.0,
            starting_frame_deviation = 60,
        }
    },
}
data.raw.boiler["he-gas-boiler"].energy_source = {
    type = "fluid",
    emissions_per_minute = 30,
    fluid_box = {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {type = "input", position = { 0, 1.5}},
        },
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        production_type = "input",
    },
    --fuel_category = "combustible-liquid-fuels",
    burns_fluid = true,
    scale_fluid_usage = true,
    smoke = {
        {
            name = "smoke",
            north_position = util.by_pixel(-38, -47.5),
            south_position = util.by_pixel(38.5, -32),
            east_position = util.by_pixel(20, -70),
            west_position = util.by_pixel(-19, -8.5),
            frequency = 15,
            starting_vertical_speed = 0.0,
            starting_frame_deviation = 60,
        }
    },
}
