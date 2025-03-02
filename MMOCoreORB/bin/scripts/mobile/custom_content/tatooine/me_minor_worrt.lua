me_minor_worrt = Creature:new {
	objectName = "@mob/creature_names:minor_worrt",
	customName = "",
	socialGroup = "worrt",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 7,
	chanceHit = 0.23,
	damageMin = 55,
	damageMax = 75,
	baseXp = 85,
	baseHAM = 100,
	baseHAMmax = 160,
	armor = 0,
	resists = {0, 0, 0, 0, 0, 0, 0, -1, -1},
	meatType = "meat_reptilian",
	meatAmount = 5,
	hideType = "hide_leathery",
	hideAmount = 5,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1,
	customAiMap = "",

	templates = {
		"object/mobile/worrt_hue.iff"
	},
	controlDeviceTemplate = "object/intangible/pet/worrt_hue.iff",

	lootGroups = {
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = {
		{"intimidationattack", ""}
	},
	secondaryAttacks = {},
	conversationTemplate = ""
}

CreatureTemplates:addCreatureTemplate(me_minor_worrt, "me_minor_worrt")