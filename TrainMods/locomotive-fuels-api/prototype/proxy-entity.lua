local proxy_inserter = table.deepcopy{(data.raw["inserter"]["inserter"])}

proxy_inserter.type = "inserter"
proxy_inserter.name = "lfapi-proxy-inserter"
proxy_inserter.hidden = false
proxy_inserter.icon = "__locomotive-fuels-api__/graphics/icons/inserter.png"
proxy_inserter.icon_size = 32
proxy_inserter.icon_mipmaps = 1
proxy_inserter.selection_priority = 6
proxy_inserter.bulk = false
proxy_inserter.flags = {"placeable-neutral", "not-rotatable", "not-blueprintable", "not-deconstructable", "not-upgradable", "not-in-kill-statistics"}
proxy_inserter.max_health = nil
proxy_inserter.dying_explosion = nil
proxy_inserter.alert_when_damaged = nil
proxy_inserter.create_ghost_on_death = false
proxy_inserter.corpse = nil
proxy_inserter.resistances = nil
proxy_inserter.collision_box = {{0,0}, {0,0}}
proxy_inserter.selection_box = {{-0.4, -0.35}, {0.4, 0.45}}
proxy_inserter.draw_inserter_arrow = true
proxy_inserter.draw_held_item = true
proxy_inserter.working_sound = nil
proxy_inserter.rotated_sound = nil
proxy_inserter.allow_copy_paste = false
proxy_inserter.pickup_position = {0, -1}
proxy_inserter.insert_position = {0, 1.1}
proxy_inserter.energy_source = {type = "void"}
proxy_inserter.energy_per_movement = "0kJ"
proxy_inserter.energy_per_rotation = "0kJ"
proxy_inserter.extension_speed = 1000
proxy_inserter.rotation_speed = 10000
proxy_inserter.hand_base_picture = nil
proxy_inserter.hand_open_picture = nil
proxy_inserter.hand_closed_picture = nil
proxy_inserter.hand_base_shadow = nil
proxy_inserter.hand_open_shadow = nil
proxy_inserter.hand_closed_shadow = nil
proxy_inserter.platform_picture = nil
proxy_inserter.circuit_connector = nil
proxy_inserter.circuit_wire_max_distance = 0
proxy_inserter.circuit_wire_connection_points = 0
proxy_inserter.circuit_wire_connector_sprites = nil

data:extend({
  util.merge({
    data.raw["pump"]["pump"],
    {
        name = "lfapi-proxy-pump",
        icon = "__base__/graphics/icons/pump.png",
        hidden = false,
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation", "filter-directions", "not-blueprintable", "not-deconstructable", "not-upgradable", "not-in-kill-statistics"},
        minable = nil,
        --localised_description = { "entity-description.le-boiler" },
        max_health = 500,
        is_military_target = false,
        fast_replaceable_group = nil,
        collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selection_priority = 8,
        fluid_box =
        {
          volume = 1000,
          pipe_covers = pipecoverspictures(),
          hide_connection_info = true,
          pipe_connections =
          {
            { direction = defines.direction.north, position = {0, 0}, flow_direction = "output", connection_type = "linked", linked_connection_id = 1261169},
            { direction = defines.direction.south, position = {0, 0.5}, flow_direction = "input" }
          }
        },
        pumping_speed = 50,
        energy_source = {type = "void"},
        circuit_connector = nil,
        circuit_wire_max_distance = nil,
        fluid_wagon_connector_frame_count = nil,
        fluid_wagon_connector_alignment_tolerance = nil,
        fluid_wagon_connector_graphics = nil,
        
    },
  })
})
