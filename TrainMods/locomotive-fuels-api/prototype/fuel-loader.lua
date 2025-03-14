require ("api.group-categories")
local fuel_loader_entity = table.deepcopy{(data.raw["assembling-machine"]["assembling-machine"])}

fuel_loader_entity.type = "assembling-machine"
fuel_loader_entity.name = "lfapi-proxy-assembler"
fuel_loader_entity.icon = "__base__/graphics/icons/pump.png"
fuel_loader_entity.hidden = false
fuel_loader_entity.icon_size = 64
fuel_loader_entity.icon_mipmaps= 4
fuel_loader_entity.minable = { mining_time = 1.4, result = "locomotive-fuel-pump" }
fuel_loader_entity.flags = {"placeable-neutral","placeable-player", "player-creation", "not-rotatable",  "not-blueprintable", "not-deconstructable", "not-upgradable", "not-in-kill-statistics"}
fuel_loader_entity.max_health = nil
fuel_loader_entity.corpse = nil
fuel_loader_entity.dying_explosion = nil
-- fuel_loader_entity.icon_draw_specification = {shift = {0, -0.3}}
fuel_loader_entity.alert_icon_shift = util.by_pixel(0, -12)
fuel_loader_entity.circuit_connector = circuit_connector_definitions["assembling-machine"]
fuel_loader_entity.circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance
fuel_loader_entity.collision_box = {{0, 0}, {0 ,0}}
fuel_loader_entity.selection_box = {{-0.5, -1}, {0.5, 1}}
fuel_loader_entity.icon_draw_specification = {scale = 0.5}
fuel_loader_entity.working_sound = {sound = {filename = "__base__/sound/pump.ogg", volume= 0.35}, audible_distance_modifier = 0.65, max_sounds_per_type = 2}
fuel_loader_entity.resistances = {{type = "fire", percent = 95}, {type = "impact", percent = 45}}
fuel_loader_entity.fluid_box = { volume = 1000, hide_connection_info = false, always_draw_covers = false, production_type = "input", pipe_connections = { flow_direction = "input" , direction = defines.direction.south, position = {0, 0}, connection_type = "linked", linked_connection_id = 1261169}}
fuel_loader_entity.energy_source = { type = "electric", usage_priority = "secondary-input", drain = "5kW" }
fuel_loader_entity.energy_usage = "95kW"
fuel_loader_entity.is_military_target = false
fuel_loader_entity.fluid_boxes_off_when_no_fluid_recipe = false
fuel_loader_entity.impact_category = "metal"
fuel_loader_entity.crafting_categories = {"locomotive-fuels-crafting"}
fuel_loader_entity.crafting_speed = 1.0
fuel_loader_entity.module_slots = 0
fuel_loader_entity.allowed_effects = {"consumption", "speed"}
data:extend({
  {
    type = "item",
    name = "locomotive-fuel-pump",
    -- icon = "__locomotive-fuels-api__/graphics/icons/diesel-locomotive.png",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "train-transport",
    order = "c[train-transport]-j[locomotive-fuel-pump]",
    place_result = "lfapi-proxy-pump",
    stack_size = 10
  },
  fuel_loader_entity
})









