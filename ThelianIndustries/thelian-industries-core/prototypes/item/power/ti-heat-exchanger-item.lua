if settings.startup["ti-full-power-overhaul"].value == true then
data:extend({
    {
        type = "item",
        name = "se-heat-exchanger",
        icon = "__base__/graphics/icons/heat-boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "ti-nuclear-power",
        order = "a[ti-nuclear-power]-a[se-heat-exchanger]",
        place_result = "se-heat-exchanger",
        stack_size = 50,
      },
      {
        type = "item",
        name = "he-heat-exchanger",
        icon = "__base__/graphics/icons/heat-boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "ti-nuclear-power",
        order = "a[ti-nuclear-power]-b[he-heat-exchanger]",
        place_result = "he-heat-exchanger",
        stack_size = 50,
      },
      {
        type = "item",
        name = "pe-heat-exchanger",
        icon = "__base__/graphics/icons/heat-boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "ti-nuclear-power",
        order = "a[ti-nuclear-power]-c[pe-heat-exchanger]",
        place_result = "pe-heat-exchanger",
        stack_size = 50,
      },
})
end