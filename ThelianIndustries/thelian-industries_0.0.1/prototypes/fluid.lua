if settings.startup["ti-steam-overhaul"].value == true then
data:extend({
  {
    type = "fluid",
    name = "salt-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r=0, g=0.28, b=0.68},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "a[fluid]-a[salt-water]",
  },
  {
    type = "fluid",
    name = "distilled-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "a[fluid]-b[distilled-water]"
  }
})
end