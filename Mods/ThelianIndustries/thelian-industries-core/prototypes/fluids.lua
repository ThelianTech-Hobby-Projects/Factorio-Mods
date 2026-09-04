local water_fuel_value = 5
local crude_fuel_value = 1
data.raw.fluid["water"].fuel_value = water_fuel_value .. "kJ"
data.raw.fluid["crude-oil"].fuel_value = crude_fuel_value .. "MJ"
data:extend({
  {
    type = "fluid",
    name = "salt-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2kJ",
    base_color = {r=0, g=0.28, b=0.68},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "a[fluid]-a[salt-water]",
  },
  {
    type = "fluid",
    name = "distilled-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2kJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "a[fluid]-b[distilled-water]"
  },
  {
    type = "fluid",
    name = "flowing-water",
    localised_description = { "fluid-description.flowing-water-description" },
    default_temperature = 15,
    max_temperature = 300,
    fuel_value = "2.5MJ",
    base_color = {r=0, g=0.33, b=0.62},
    flow_color = {r=0.69, g=0.69, b=0.69},
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "a[fluid]-b[flowing-water]"
  },

})
