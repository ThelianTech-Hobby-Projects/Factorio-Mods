data:extend({
    --Item Group Categories and Sub Categories.
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
    {
        type = "item-subgroup",
        name = "ti-belt",
        group = "ti-logistics",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-train",
        group = "ti-logistics",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "ti-robot",
        group = "ti-logistics",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "ti-vehicle",
        group = "ti-logistics",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "ti-storage",
        group = "ti-logistics",
        order = "e"
    },
    {
        type = "item-subgroup",
        name = "ti-networking",
        group = "ti-logistics",
        order = "f"
    },
    {
        type = "item-subgroup",
        name = "ti-logistic-misc",
        group = "ti-logistics",
        order = "g"
    },
        --------------------Mining, Metallurgy & Smelting-------------------
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
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-metallurgy",
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
    {
        type = "item-subgroup",
        name = "advanced-automation-age",
        group = "ti-machinery",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "advanced-industrial-age",
        group = "ti-machinery",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "digital-age",
        group = "ti-machinery",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "electronic-age",
        group = "ti-machinery",
        order = "d"
    },
    {
        type = "item-subgroup",
        name = "automation-age",
        group = "ti-machinery",
        order = "e"
    },
    {
        type = "item-subgroup",
        name = "industrial-age",
        group = "ti-machinery",
        order = "f"
    },
    {
        type = "item-subgroup",
        name = "el-age",
        group = "ti-machinery",
        order = "g"
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
        icon = "__base__/graphics/achievement/research-with-space.png",
        icon_size = 128,
        icon_mipmaps = 1
    },
    {
        type = "item-subgroup",
        name = "ti-science-packs",
        group = "ti-science",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-science-parts",
        group = "ti-science",
        order = "b"
    },
    --------------------Components, Parts, & Intermediates-------------------
    {
        type = "item-group",
        name = "ti-intermediates",
        order = "g",
        icon = "__base__/graphics/item-group/intermediate-products.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
    {
        type = "item-subgroup",
        name = "ti-construction-parts",
        group = "ti-intermediates",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-components",
        group = "ti-intermediates",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "ti-electronic-components",
        group = "ti-intermediates",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "ti-parts",
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
        name = "ti-ingots",
        group = "ti-intermediates",
        order = "f"
    },
    {
        type = "item-subgroup",
        name = "ti-rocks",
        group = "ti-intermediates",
        order = "g"
    },
    --------------------Waste Management Systems-------------------
    {
        type = "item-group",
        name = "ti-waste",
        order = "h",
        icon = "__base__/graphics/item-group/production.png",
        icon_size = 128,
        icon_mipmaps = 2
    },
    --------------------Fluids & Barrels-------------------
    {
        type = "item-group",
        name = "ti-fluid",
        order = "i",
        icon = "__thelian-graphics__/graphics/item-groups/fluids.png",
        icon_size = 64,
        icon_mipmaps = 1
    },
    {
        type = "item-subgroup",
        name = "ti-fluids",
        group = "ti-fluid",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "ti-gases",
        group = "ti-fluid",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "ti-molten",
        group = "ti-fluid",
        order = "c"
    },
    {
        type = "item-subgroup",
        name = "ti-barrels",
        group = "ti-fluid",
        order = "d"
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
    --------------------Logical Circuit Network Systems-------------------
})