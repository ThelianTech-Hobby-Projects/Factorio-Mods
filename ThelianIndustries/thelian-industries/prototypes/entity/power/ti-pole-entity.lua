if settings.startup["ti-full-power-overhaul"].value == true then
if settings.startup["ti-transmission-overhaul"].value == true then
    data.raw["electric-pole"]["substation"].fast_replaceable_group = "electric-pole"
    data:extend({
        util.merge({
            data.raw["electric-pole"]["small-electric-pole"],
            {
                name = "small-transmission-pole",
                --localised_description = { "entity-description.le-boiler" },
                --icon = "__thelian-graphics__/graphics/icons/example.png",
                --icon_size = 64,
                minable = { result = "small-transmission-pole"},
                max_health = 200,
                maximum_wire_distance = 7,
                supply_area_distance = 1.5,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["medium-electric-pole"],
            {
                name = "medium-transmission-pole",
                minable = { result = "medium-transmission-pole"},
                max_health = 200,
                maximum_wire_distance = 15,
                supply_area_distance = 1.5,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["big-electric-pole"],
            {
                name = "long-transmission-pole",
                minable = { result = "long-transmission-pole"},
                max_health = 200,
                maximum_wire_distance = 32,
                supply_area_distance = 1,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["big-electric-pole"],
            {
                name = "industrial-transmission-pole",
                minable = { result = "industrial-transmission-pole"},
                max_health = 200,
                maximum_wire_distance = 50,
                supply_area_distance = 1,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["substation"],
            {
                name = "small-area-transformer",
                minable = { result = "small-area-transformer"},
                max_health = 200,
                maximum_wire_distance = 5,
                supply_area_distance = 10,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["substation"],
            {
                name = "medium-area-transformer",
                minable = { result = "medium-area-transformer"},
                max_health = 200,
                maximum_wire_distance = 8,
                supply_area_distance = 15,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["substation"],
            {
                name = "large-area-transformer",
                minable = { result = "large-area-transformer"},
                max_health = 200,
                maximum_wire_distance = 10,
                supply_area_distance = 20,
            },
        }),
        util.merge({
            data.raw["electric-pole"]["substation"],
            {
                name = "industrial-transformer",
                minable = { result = "industrial-transformer"},
                max_health = 200,
                maximum_wire_distance = 20,
                supply_area_distance = 40,
            },
        }),
    })
end
end