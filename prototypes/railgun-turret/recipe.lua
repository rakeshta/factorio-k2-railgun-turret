--
--  recipe.lua
--  factorio-k2-railgun-turret
--
--  Created by Rakesh Ayyaswami on 09 Jan 2023.
--

data:extend({
  {
    type = "recipe",
    name = "kr-railgun-turret",
    -- enabled = false,
    enabled = true,
    energy_required = 20,
    ingredients = {
      { "gun-turret", 4 },
      { "steel-plate", 16 },
      { "electric-engine-unit", 10 },
      { "processing-unit", 20 },
      { "low-density-structure", 10 },
    },
    result = "kr-railgun-turret",
  },
})
