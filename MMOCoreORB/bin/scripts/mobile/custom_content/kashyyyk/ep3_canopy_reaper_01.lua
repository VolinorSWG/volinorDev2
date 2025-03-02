ep3_canopy_reaper_01 = Creature:new {
	customName = "Canopy Reaper",
	socialGroup = "canopy_bandit",
	faction = "",
	mobType = MOB_NPC,
	level = 130,
	chanceHit = 1.33,
	damageMin = 1800,
	damageMax = 2500,
	baseXp = 13000,
	baseHAM = 145000,
	baseHAMmax = 155000,
	armor = 2,
	resists = {80, 80, 80, 85, 85, 85, 75, 60, -1},
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
		"object/mobile/ep3/ep3_canopy_reaper_01.iff"
	},

	lootGroups = {
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "none",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(brawlermaster,marksmanmaster,commandomaster,bountyhuntermaster),
	secondaryAttacks = {},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang"
}

CreatureTemplates:addCreatureTemplate(ep3_canopy_reaper_01, "ep3_canopy_reaper_01")