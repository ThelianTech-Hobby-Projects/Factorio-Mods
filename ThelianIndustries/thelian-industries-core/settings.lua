data:extend({
    {
        type = "bool-setting",
        name = "ti-debug-mode",
        setting_type = "startup",
        default_value = false,
        hidden = true
    },
    -- Startup Settings
    --Full Overhaul Settings
    {
        type = "bool-setting",
        name = "ti-full-power-overhaul",
        setting_type = "startup",
        default_value = true,
        order = "Ap",
    },
        --Power Overhaul Settings
    {
        type = "bool-setting",
        name = "ti-transmission-overhaul",
        setting_type = "startup",
        default_value = true,
        order = "Pp0",
    },
    {
        type = "bool-setting",
        name = "ti-hydropower-overhaul",
        setting_type = "startup",
        default_value = true,
        order = "Pp1",
    },
})