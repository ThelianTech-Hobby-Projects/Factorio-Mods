--[[
 E= Efficiency, MT = Max Temp, PP = Power Produced CR = Consumption Rate
    Tier 1: E = 25%, MT = 815C, PP = 300KW-1.2MW, PC = 2.4MW, CR = 30/s
    Tier 2: E = 50%, MT = 815C, PP = 600KW-2.4MW, PC = 4.8MW, CR = 30/s
    Tier 3: E = 75%, MT = 815C, PP = 1.8MW-7.2MW, PC = 7.2MW, CR = 30/s
    Tier 4: E = 100%, MT = 815C, PP = 2.4MW-9.6MW, PC = 9.6MW, CR = 30/s

]]--


data:extend({
    util.merge({
      data.raw.generator["steam-engine"],
      {
        name = "le-steam-engine",
        icon = "__base__/graphics/icons/steam-engine.png",
        localised_description = { "entity-description.le-steam-engine" },
        icon_size = 64,
        icon_mipmaps = 4,
        minable = { mining_time = 1, result = "le-steam-engine" },
        max_health = 500,
        effectivity = 0.25,
        fluid_usage_per_tick = 0.5,
        maximum_temperature = 815,
        max_power_output = "1.2MW",
        next_upgrade = "me-steam-engine",
      },
    }),
    util.merge({
        data.raw.generator["steam-engine"],
        {
          name = "me-steam-engine",
          icon = "__base__/graphics/icons/steam-engine.png",
          localised_description = { "entity-description.me-steam-engine" },
          icon_size = 64,
          icon_mipmaps = 4,
          minable = { mining_time = 1, result = "me-steam-engine" },
          max_health = 500,
          effectivity = 0.50,
          fluid_usage_per_tick = 0.5,
          maximum_temperature = 815,
          max_power_output = "2.4MW",
          --next_upgrade = "me-steam-engine",
        },
      }),
      util.merge({
        data.raw.generator["steam-turbine"],
        {
          name = "se-turbine",
          icon = "__base__/graphics/icons/steam-turbine.png",
          localised_description = { "entity-description.he-turbine" },
          icon_size = 64,
          icon_mipmaps = 4,
          minable = { mining_time = 1, result = "se-turbine" },
          max_health = 1000,
          effectivity = 0.75,
          fluid_usage_per_tick = 1,
          maximum_temperature = 815,
          max_power_output = "7.2MW",
          next_upgrade = "he-turbine",
        },
      }),
      --Turbines
      util.merge({
        data.raw.generator["steam-turbine"],
        {
          name = "he-turbine",
          icon = "__base__/graphics/icons/steam-turbine.png",
          localised_description = { "entity-description.se-turbine" },
          icon_size = 64,
          icon_mipmaps = 4,
          minable = { mining_time = 1, result = "he-turbine" },
          max_health = 1000,
          effectivity = 1,
          fluid_usage_per_tick = 1,
          maximum_temperature = 815,
          max_power_output = "9.6MW",
        },
      }),
})