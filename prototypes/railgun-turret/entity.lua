--
--  entity.lua
--  factorio-k2-railgun-turret
--
--  Created by Rakesh Ayyaswami on 06 Jan 2023.
--

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local graphics_path = k2_railgun_turrent_path .. "graphics/railgun-turret/"
local sounds_path = k2_railgun_turrent_path .. "sounds/railgun-turret/"

local function cannon_turret_attack_sheet(inputs)
  return {
    layers = {
      {
        width = 220,
        height = 190,
        line_length = inputs.frame_count or 4,
        frame_count = inputs.frame_count or 4,
        axially_symmetrical = false,
        direction_count = 64,
        animation_speed = 0.35,
        shift = { 0, -0.7 },
        stripes = {
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-1.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-2.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-3.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-4.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
        },
        hr_version = {
          width = 440,
          height = 380,
          frame_count = inputs.frame_count and inputs.frame_count or 4,
          axially_symmetrical = false,
          direction_count = 64,
          animation_speed = 0.35,
          shift = { 0, -0.7 },
          stripes = {
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-1.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-2.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-3.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-4.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
          },
          scale = 0.5,
        },
      },

      {
        flags = { "mask" },
        line_length = inputs.frame_count or 4,
        width = 220,
        height = 190,
        frame_count = inputs.frame_count or 4,
        axially_symmetrical = false,
        direction_count = 64,
        shift = { 0, -0.7 },
        apply_runtime_tint = true,
        stripes = {
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-maks-1.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-maks-2.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-maks-3.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-maks-4.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
        },
        hr_version = {
          flags = { "mask" },
          line_length = inputs.frame_count or 4,
          width = 440,
          height = 380,
          frame_count = inputs.frame_count or 4,
          axially_symmetrical = false,
          direction_count = 64,
          shift = { 0, -0.7 },
          apply_runtime_tint = true,
          stripes = {
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-maks-1.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-maks-2.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-maks-3.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-maks-4.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
          },
          scale = 0.5,
        },
      },

      {
        width = 220,
        height = 190,
        frame_count = inputs.frame_count and inputs.frame_count or 4,
        axially_symmetrical = false,
        direction_count = 64,
        shift = { 0.9, -0.05 },
        draw_as_shadow = true,
        stripes = {
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-shadow-1.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-shadow-2.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-shadow-3.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
          {
            filename = graphics_path .. "railgun-turret-attack-sheet-shadow-4.png",
            width_in_frames = inputs.frame_count or 4,
            height_in_frames = 16,
          },
        },

        hr_version = {
          width = 440,
          height = 380,
          frame_count = inputs.frame_count and inputs.frame_count or 4,
          axially_symmetrical = false,
          direction_count = 64,
          shift = { 0.9, -0.05 },
          draw_as_shadow = true,
          stripes = {
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-shadow-1.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-shadow-2.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-shadow-3.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
            {
              filename = graphics_path .. "hr-railgun-turret-attack-sheet-shadow-4.png",
              width_in_frames = inputs.frame_count or 4,
              height_in_frames = 16,
            },
          },
          scale = 0.5,
        },
      },
    },
  }
end

data:extend({
  {
    type = "ammo-turret",
    name = "kr-railgun-turret",
    icon = graphics_path .. "railgun-turret-icon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "kr-railgun-turret" },
    max_health = 1000,
    corpse = "turret-remnant",
    damaged_trigger_effect = hit_effects.entity(),
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 75 },
      { type = "impact", percent = 75 },
    },
    collision_box = { { -1.75, -1.75 }, { 1.75, 1.75 } },
    selection_box = { { -2, -2 }, { 2, 2 } },
    rotation_speed = 0.002,
    --preparing_speed = 0.04,
    --folding_speed = 0.04,
    dying_explosion = "big-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_speed = 0.2,
    folded_animation = cannon_turret_attack_sheet({ frame_count = 1, line_length = 1 }),
    --preparing_animation = railgun_turret_animation{},
    --prepared_animation = railgun_turret_animation{},
    attacking_animation = cannon_turret_attack_sheet({ frame_count = 4, line_length = 4 }),
    --folding_animation = cannon_turret_attack_sheet{},
    base_picture = {
      layers = {
        {
          filename = graphics_path .. "kr-turret-base.png",
          priority = "high",
          width = 220,
          height = 190,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = { 0, -0.8 },
          hr_version = {
            filename = graphics_path .. "hr-kr-turret-base.png",
            priority = "high",
            width = 440,
            height = 380,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = { 0, -0.8 },
            scale = 0.5,
          },
        },
        {
          filename = graphics_path .. "kr-turret-base-mask.png",
          flags = { "mask", "low-object" },
          line_length = 1,
          width = 220,
          height = 190,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = { 0, -0.8 },
          apply_runtime_tint = true,
          hr_version = {
            filename = graphics_path .. "hr-kr-turret-base-mask.png",
            flags = { "mask", "low-object" },
            line_length = 1,
            width = 440,
            height = 380,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = { 0, -0.8 },
            apply_runtime_tint = true,
            scale = 0.5,
          },
        },
        {
          filename = graphics_path .. "kr-turret-base-shadow.png",
          line_length = 1,
          width = 220,
          height = 190,
          axially_symmetrical = false,
          draw_as_shadow = true,
          direction_count = 1,
          frame_count = 1,
          shift = { 0, -0.8 },
          hr_version = {
            filename = graphics_path .. "hr-kr-turret-base-shadow.png",
            line_length = 1,
            width = 440,
            height = 380,
            axially_symmetrical = false,
            draw_as_shadow = true,
            direction_count = 1,
            frame_count = 1,
            shift = { 0, -0.8 },
            scale = 0.5,
          },
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = {
      type = "projectile",
      ammo_category = "railgun-shell",
      cooldown = 120,
      projectile_creation_distance = 3.25,
      projectile_center = { 0, 0.15 },
      range = 50,
      min_range = 20,
      rotate_penalty = 20,
      health_penalty = -100,
      sound = {
        {
          filename = sounds_path .. "railgun.ogg",
          volume = 1.5,
        },
      },
    },

    water_reflection = {
      pictures = {
        filename = graphics_path .. "turrets-reflection.png",
        priority = "extra-high",
        width = 50,
        height = 50,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    call_for_help_radius = 80,
  },
})
