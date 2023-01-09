--
--  railgun-turret.lua
--  factorio-k2-railgun-turret
--
--  Created by Rakesh Ayyaswami on 10 Jan 2023.
--

local graphics_path = k2_railgun_turrent_path .. "graphics/technology/"


data:extend({
  {
    type = "technology",
    name = "kr-railgun-turret",
    mod = "Krastorio2",
    icon = graphics_path .. "railgun-turret.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = { "military-4", "utility-science-pack" },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "kr-railgun-turret",
      },
      {
        type = "unlock-recipe",
        recipe = "basic-railgun-shell",
      },
      {
        type = "unlock-recipe",
        recipe = "explosion-railgun-shell",
      },
    },
    order = "g-f-z",
    unit = {
      count = 500,
      ingredients = {
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
  },
})
