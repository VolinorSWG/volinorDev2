dressed_myyydril_sick = Creature:new {
	customName = "a sickened Myyydril refugee",
	socialGroup = "townsperson",
	faction = "townsperson",
	mobType = MOB_NPC,
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0, 0, 0, 0, 0, 0, 0, -1, -1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1,
	customAiMap = "",

	templates = {
		"object/mobile/dressed_myyydril_sick_01.iff",
		"object/mobile/dressed_myyydril_sick_02.iff",
		"object/mobile/dressed_myyydril_sick_03.iff",
		"object/mobile/dressed_myyydril_sick_04.iff",
		"object/mobile/dressed_myyydril_sick_05.iff",
		"object/mobile/dressed_myyydril_sick_06.iff"
	},

	lootGroups = {
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = {},
	secondaryAttacks = {},
	conversationTemplate = ""
}

CreatureTemplates:addCreatureTemplate(dressed_myyydril_sick, "dressed_myyydril_sick")