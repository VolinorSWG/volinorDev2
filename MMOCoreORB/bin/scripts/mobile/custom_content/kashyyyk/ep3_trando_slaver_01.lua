ep3_trando_slaver_01 = Creature:new {
	customName = "Trandoshan Slaver",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "",
	mobType = MOB_NPC,
	level = 100,
	chanceHit = 1,
	damageMin = 1150,
	damageMax = 1470,
	baseXp = 7500,
	baseHAM = 50000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {60, 60, 80, 60, 55, 65, 85, 45, -1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1,
	customAiMap = "",

	templates = {
		"object/mobile/ep3/ep3_trando_slaver_01.iff"
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

CreatureTemplates:addCreatureTemplate(ep3_trando_slaver_01, "ep3_trando_slaver_01")