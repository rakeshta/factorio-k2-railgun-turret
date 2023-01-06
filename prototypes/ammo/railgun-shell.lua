--
--  railgun-shell.lua
--  factorio-k2-railgun-turret
--
--  Created by Rakesh Ayyaswami on 06 Jan 2023.
--

local graphics_path = k2_railgun_turrent_path .. "graphics/ammo/"

data:extend({
  {
    type = "ammo",
    name = "basic-railgun-shell",
    icon = graphics_path .. "basic-railgun-shell-icon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    ammo_type = {
      category = "railgun-shell",
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "basic-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    magazine_size = 1,
    subgroup = "railgun-turret",
    order = "b01[basic-railgun-shell]",
    stack_size = 100,
  },

  {
    type = "ammo",
    name = "explosion-railgun-shell",
    description = "explosion-railgun-shell",
    icon = graphics_path .. "explosion-railgun-shell-icon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    ammo_type = {
      category = "railgun-shell",
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "explosion-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    magazine_size = 1,
    subgroup = "railgun-turret",
    order = "b02[explosion-railgun-shell]",
    stack_size = 100,
  },
})
