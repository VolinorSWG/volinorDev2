darklighter_rockmite = Creature:new {
	objectName = "@mob/creature_names:rockmite",
	customName = "",
	socialGroup = "self",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 25,
	chanceHit = 0.36,
	damageMin = 280,
	damageMax = 290,
	baseXp = 2637,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 1,
	resists = {0, 0, 0, 0, 0, 0, 0, -1, -1},
	meatType = "meat_insect",
	meatAmount = 35,
	hideType = "hide_scaley",
	hideAmount = 35,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 1,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.8,
	customAiMap = "",

	templates = {
		"object/mobile/rock_mite.iff"
	},
	controlDeviceTemplate = "object/intangible/pet/rock_mite_hue.iff",

	lootGroups = {
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = {
		{"posturedownattack", ""}
	},
	secondaryAttacks = {},
	conversationTemplate = ""
}

CreatureTemplates:addCreatureTemplate(darklighter_rockmite, "darklighter_rockmite")