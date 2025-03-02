ep3_blackscale_pilot_s01 = Creature:new {
	customName = "Blackscale Pilot",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "",
	mobType = MOB_NPC,
	level = 60,
	chanceHit = 0.6,
	damageMin = 400,
	damageMax = 600,
	baseXp = 7500,
	baseHAM = 10000,
	baseHAMmax = 15000,
	armor = 2,
	resists = {40, 40, 80, 60, 35, 55, 75, 40, -1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1,
	customAiMap = "",

	templates = {
		"object/mobile/ep3/ep3_blackscale_pilot_s01.iff"
	},

	lootGroups = {
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "none",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(brawlermaster,marksmanmaster),
	secondaryAttacks = {},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang"
}

CreatureTemplates:addCreatureTemplate(ep3_blackscale_pilot_s01, "ep3_blackscale_pilot_s01")