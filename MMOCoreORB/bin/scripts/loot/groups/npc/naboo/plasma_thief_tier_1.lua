--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

plasma_thief_tier_1 = {
	description = "",
	minimumLevel = 0,
	maximumLevel = -1,
	lootItems = {
		{groupTemplate = "junk", weight = 3500000},
		{groupTemplate = "loot_kit_parts", weight = 1400000},
		{groupTemplate = "plasma_thief_common", weight = 700000},
		{groupTemplate = "tailor_components", weight = 1400000},
		{groupTemplate = "resource_gemstone", weight = 250000},
		{groupTemplate = "resource_metal", weight = 250000},
		{groupTemplate = "resource_ore", weight = 250000},
		{groupTemplate = "resource_water", weight = 250000},
		{groupTemplate = "melee_weapons_common", weight = 1000000},
		{groupTemplate = "ranged_weapons_common", weight = 1000000},
	}
}

addLootGroupTemplate("plasma_thief_tier_1", plasma_thief_tier_1)

--[[
mobiles:
	scripts/mobile/naboo/plasma_bandit.lua	8
	scripts/mobile/naboo/plasma_thief.lua	7
	scripts/mobile/naboo/plasma_thief_leader.lua	9
]]--
