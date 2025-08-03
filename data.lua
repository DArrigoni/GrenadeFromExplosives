data:extend({
  {
    type = "recipe",
    name = "grenade-from-explosives",
    icon = "__GrenadeFromExplosives__/graphics/icons/grenade_from_explosives.png",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "explosives", amount = 10 },
      { type = "item", name = "steel-plate", amount = 1 }
    },
    results = {
      { type = "item", name = "grenade", amount = 1 }
    },
    main_product = "grenade",
    allow_as_intermediate = true
  }
})

data:extend({
  {
    type = "technology",
    name = "grenade-from-explosives",
    icon = "__GrenadeFromExplosives__/graphics/icons/grenade_from_explosives.png",
    icon_size = 64,
    icon_mipmaps = 1,
    prerequisites = { "explosives", "military-2" },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 }
      },
      time = 15
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "grenade-from-explosives"
      }
    },
    order = "e-a-bb"
  }
})