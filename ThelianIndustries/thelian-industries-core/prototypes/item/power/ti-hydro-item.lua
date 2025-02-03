if settings.startup["ti-full-power-overhaul"].value == true then
if settings.startup["ti-hydropower-overhaul"].value == true then
data:extend({
    {
        type = "item",
        name = "small-hydro-dam",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "ti-steam-power",
        order = "c[ti-steam-power]-a[small-hydro-dam]",
        place_result = "small-hydro-dam",
        stack_size = 10,
      },
      {
        type = "item",
        name = "hydro-turbine",
        icon = "__base__/graphics/icons/steam-turbine.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "ti-steam-power",
        order = "c[ti-steam-power]-b[hydro-turbine]",
        place_result = "hydro-turbine",
        stack_size = 10,
      }
})
end
end