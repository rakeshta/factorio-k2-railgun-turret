--
--  item.lua
--  factorio-k2-railgun-turret
--
--  Created by Rakesh Ayyaswami on 09 Jan 2023.
--

local graphics_path = k2_railgun_turrent_path .. "graphics/railgun-turret/"

data:extend({
  {
    type = "item",
    name = "kr-railgun-turret",
    icon = graphics_path .. "railgun-turret-icon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "railgun-turret",
    order = "a01[railgun-turret]",
    place_result = "kr-railgun-turret",
    stack_size = 50,
  },
})
