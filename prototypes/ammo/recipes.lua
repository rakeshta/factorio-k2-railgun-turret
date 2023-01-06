--
--  recipes.lua
--  factorio-k2-railgun-turret
--
--  Created by Rakesh Ayyaswami on 06 Jan 2023.
--

data:extend({
  {
    type = "recipe",
    name = "basic-railgun-shell",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "steel-plate", 5 },
      { "advanced-circuit", 1 },
    },
    result = "basic-railgun-shell",
  },
  {
    type = "recipe",
    name = "explosion-railgun-shell",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "basic-railgun-shell", 1 },
      { "explosives", 3 },
    },
    result = "explosion-railgun-shell",
  },
})
