--[[ Heat Exchangers Data Table
 E= Efficiency, T = Temp, PP = Power Produced PC = Power Consumed
    Efficiency Per Tier
    Tier 3: E = 1.0, T = 640C, PC = 15MW 120/s
    Tier 4: E = 1.0, T = 815C, PC = 20MW 120/s
]]--


data.raw.boiler["heat-exchanger"].fast_replaceable_group = "boiler"
data:extend({
    util.merge({
      data.raw.boiler["heat-exchanger"],
      {
        name = "se-heat-exchanger",
        icon = "__base__/graphics/icons/heat-boiler.png",
        localised_description = { "entity-description.se-heat-exchanger" },
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { mining_time = 0.5, result = "se-heat-exchanger" },
        max_health = 500,
        target_temperature = 640,
        energy_consumption = "7.5MW",
        next_upgrade = "he-heat-exchanger",
        energy_source = { max_temperature = 1000, min_working_temperature = 640 },
      },
    }),
    util.merge({
        data.raw.boiler["heat-exchanger"],
        {
          name = "he-heat-exchanger",
          icon = "__base__/graphics/icons/heat-boiler.png",
          localised_description = { "entity-description.heat-exchanger" },
          icon_size = 64,
          icon_mipmaps = 4,
          minable = { mining_time = 0.5, result = "he-heat-exchanger" },
          max_health = 500,
          target_temperature = 640,
          energy_consumption = "15MW",
          next_upgrade = "pe-heat-exchanger",
          energy_source = { max_temperature = 1000, min_working_temperature = 640 },
        },
      }),
      util.merge({
        data.raw.boiler["heat-exchanger"],
        {
          name = "pe-heat-exchanger",
          icon = "__base__/graphics/icons/heat-boiler.png",
          localised_description = { "entity-description.heat-exchanger" },
          icon_size = 64,
          icon_mipmaps = 4,
          minable = { mining_time = 0.5, result = "pe-heat-exchanger" },
          max_health = 500,
          target_temperature = 815,
          energy_consumption = "19.2MW",
          energy_source = { max_temperature = 1000, min_working_temperature = 815 },
        },
      }),
})