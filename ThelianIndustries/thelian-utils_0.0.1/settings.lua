local choices = require("data.waterfillchoices")

for k,v in pairs{"waterfill", "deepwaterfill", "shallowwaterfill", "mudwaterfill"} do
    data:extend({
    {
      type = "bool-setting",
      name = "Waterfill-enable-" .. v,
      setting_type = "startup",
      default_value = true,
      order = "a-" .. k
    }})
  end
data:extend({
    -- Startup Settings
		--Swimming
    {
        type = "double-setting",
        name = "Swimming-speed",
        setting_type = "startup",
        minimum_value = 0.01,
        default_value = 0.75,
        maximum_value = 1,
    },
    {
        type = "double-setting",
        name = "Swimming-deep-speed",
        setting_type = "startup",
        minimum_value = 0.01,
        default_value = 0.5,
        maximum_value = 1,
    },
    {
        type = "bool-setting",
        name = "Swimming-is-deep-swimmable",
        setting_type = "startup",
        default_value = true,
    },
	--waterfill
	{
		type = "bool-setting",
		name = "Waterfill-require-research",
		setting_type = "startup",
		default_value = true,
	},
	{
		type = "string-setting",
		name = "Waterfill-recipe-difficulty",
		setting_type = "startup",
		default_value = choices.recipe_difficulty.normal,
		allowed_values = choices.recipe_difficulty,
	},
	{
		type = "string-setting",
		name = "Waterfill-waterfillable",
		setting_type = "startup",
		default_value = choices.waterfillable.none,
		allowed_values = choices.waterfillable,
	},
	{
		type = "int-setting",
		name = "Waterfill-items-per-craft",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 1,
		maximum_value = 1000,
	},
	{
		type = "int-setting",
		name = "Waterfill-time-per-craft",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 5,
		maximum_value = 500,
	},
	{
		type = "int-setting",
		name = "Waterfill-water-per-deepwater",
		setting_type = "startup",
		minimum_value = 0,
		default_value = 0,
	},
    --Global
		--Waterfill
	{
		type = "int-setting",
		name = "Waterfill-reach-with-waterfill",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 10,
		maximum_value = 25,
	},
    -- Per Player Settings
})

for i,r in pairs{"waterfill", "deepwaterfill", "shallowwaterfill", "mudwaterfill"} do
	data:extend({{
		type = "string-setting",
		name = "Waterfill-" .. r .. "-recipe-override",
		setting_type = "startup",
		allow_blank = true,
		default_value = "",
		order = "h" .. i
	}})
end