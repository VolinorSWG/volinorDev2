fbase_elite_sand_trooper = Creature:new {
	objectName = "@mob/creature_names:fbase_elite_sand_trooper",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "imperial",
	faction = "imperial",
	level = 70,
	chanceHit = 0.7,
	damageMin = 495,
	damageMax = 700,
	baseXp = 7000,
	baseHAM = 13500,
	baseHAMmax = 19000,
	armor = 1,
	resists = {0,0,140,200,-1,-1,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_sand_trooper_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "imperial_stormtrooper_tier_3", chance = 10000000}
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "imperial_carbine",
	secondaryWeapon = "imperial_pistol",
	thrownWeapon = "thrown_weapons",

	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(marksmanmaster,carbineermaster),
	secondaryAttacks = merge(marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(fbase_elite_sand_trooper, "fbase_elite_sand_trooper")
