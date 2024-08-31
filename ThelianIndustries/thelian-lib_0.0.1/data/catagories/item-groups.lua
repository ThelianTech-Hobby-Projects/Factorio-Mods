data:extend({
    --Item Group Catagories and Sub Catagories.
    --------------------Electrical Systems-------------------
    {
        type = "item-group",
        name = "ti-power",
        order = "a",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
    {
        type = "item-subgroup",
        name = "ti-transmission",
        group = "ti-power",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-steam-power",
        group = "ti-power",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "ti-green-power",
        group = "ti-power",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "ti-nuclear-power",
        group = "ti-power",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "ti-power-storage",
        group = "ti-power",
        order = "e"
    },
    {
        type = "item-subgroup",
        name = "power-utility",
        group = "ti-power",
        order = "f"
    },
        --------------------Logistical Systems-------------------
    {
        type = "item-group",
        name = "ti-logistics",
        order = "b",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
        --------------------Mining, Metalurgy & Smelting-------------------
    {
        type = "item-group",
        name = "ti-ore-processing",
        order = "c",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    }, 
    {
        type = "item-subgroup",
        name = "ti-mining",
        group = "ti-ore-processing",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "ti-smelting",
        group = "ti-ore-processing",
        order = "b"
    },
    --------------Manufacturing & Assembly-------------------
    {
        type = "item-group",
        name = "ti-machinery",
        order = "d",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
    --------------------Chemical Manufacturing & Processing-------------------
    {
        type = "item-group",
        name = "ti-chemistry",
        order = "e",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
        --------------------Scientific Data & Researching Systems-------------------
    {
        type = "item-group",
        name = "ti-science",
        order = "f",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
    --------------------Components, Parts, & Intermediates-------------------
    {
        type = "item-group",
        name = "ti-intermediates",
        order = "g",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },    {
        type = "item-subgroup",
        name = "ti-contruction-parts",
        group = "ti-intermediates",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-parts",
        group = "ti-intermediates",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "ti-components",
        group = "ti-intermediates",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "ti-electronic-components",
        group = "ti-intermediates",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "ti-chemical-parts",
        group = "ti-intermediates",
        order = "e"
    },
    {
        type = "item-subgroup",
        name = "ti-rocks",
        group = "ti-intermediates",
        order = "f"
    },
    {
        type = "item-subgroup",
        name = "ti-ingots",
        group = "ti-intermediates",
        order = "g"
    },
    --------------------Fluids & Barrels-------------------
    {
        type = "item-group",
        name = "ti-fluid",
        order = "h",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
    --------------------Waste Management Systems-------------------
    {
        type = "item-group",
        name = "ti-waste",
        order = "i",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
     --------------------Combat & Defensive Systems-------------------
    {
        type = "item-group",
        name = "ti-combat",
        order = "j",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    }
})