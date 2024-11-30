if settings.startup["ti-full-power-overhaul"].value == true then
if settings.startup["ti-hydropower-overhaul"].value == true then
data:extend({
    util.merge({
      data.raw["generator"]["steam-turbine"],
      {
        name = "hydro-turbine",
        icon = "__base__/graphics/icons/steam-turbine.png",
        icon_size = 64,
        icon_mipmaps = 4,
        minable = {mining_time = 5, result = "hydro-turbine"},
        max_power_output =  750 .. "MW",
        max_health = 1000,
        effectivity = 1,
        fluid_usage_per_tick = 5,
        burns_fluid = true,
        maximum_temperature = 215,
        fluid_box =
        {
          volume = 200,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            { flow_direction = "input-output", direction = defines.direction.south, position = {0, 2} },
            { flow_direction = "input-output", direction = defines.direction.north, position = {0, -2} }
          },
          production_type = "input",
          filter = "flowing-water",
          minimum_temperature = 15
        },
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-output"
        },
        min_perceived_performance = 0.25,
        performance_to_sound_speedup = 0.25
      }
    }),
    util.merge({
        data.raw.boiler.boiler,
        {
          name = "small-hydro-dam",
          icon = "__base__/graphics/icons/boiler.png",
          --localised_description = { "entity-description.hydro-dam-description" },
          icon_size = 64,
          icon_mipmaps = 4,
          minable = { mining_time = 5, result = "small-hydro-dam" },
          max_health = 2500,
          target_temperature = 215,
          energy_consumption = "6MW",
          output_fluid_box = {
            volume = 200,
            pipe_covers = pipecoverspictures(),
            pipe_connections = 
            {
              {flow_direction = "output", direction = defines.direction.north, position = {0, -0.5}}
            },
            production_type = "output",
            filter = "flowing-water"
        },
        energy_source = {
          type = "fluid",
          emissions_per_minute = { pollution = 0},
          fluid_box = {
            volume = 200,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                {flow_direction = "input", direction = defines.direction.south, position = {0,0.5}}
            },
            production_type = "input",
            filter = "water",
        },
          burns_fluid = true,
          scale_fluid_usage = true,
        },
          resistances =
        {
          {
            type = "fire",
            percent = 99,
          },
          {
            type = "impact",
            percent = 99,
          },
          {
            type = "acid",
            percent = 80,
          }
        },
        },
    }),
})
end
end