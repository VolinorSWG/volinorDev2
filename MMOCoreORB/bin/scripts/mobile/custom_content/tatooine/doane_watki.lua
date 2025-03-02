doane_watki = Creature:new {
	customName = "Doane Watki (Valarian's pod racer champion)",
	socialGroup = "valarian",
	faction = "valarian",
	mobType = MOB_NPC,
	level = 25,
	chanceHit = 0.5,
	damageMin = 230,
	damageMax = 250,
	baseXp = 1250,
	baseHAM = 3000,
	baseHAMmax = 3800,
	armor = 0,
	resists = {115, 115, 15, 10, 10, 10, 15, 5, -1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1,
	customAiMap = "",

	templates = {
		"object/mobile/dressed_criminal_thug_human_male_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2000000},
				{group = "wearables_common", chance = 2000000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "printer_parts", chance = 1500000},
				{group = "valarian_common", chance = 1500000}
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_medium",
	secondaryWeapon = "none",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(brawlermid,marksmanmid),
	secondaryAttacks = {},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang"
}

CreatureTemplates:addCreatureTemplate(doane_watki, "doane_watki")