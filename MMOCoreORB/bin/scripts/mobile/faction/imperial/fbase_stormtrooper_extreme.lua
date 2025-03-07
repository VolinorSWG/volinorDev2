fbase_stormtrooper_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_stormtrooper_extreme",
	randomNameType = NAME_STORMTROOPER,
	socialGroup = "imperial",
	mobType = MOB_NPC,
	faction = "imperial",
	level = 140,
	chanceHit = 5.0,
	damageMin = 845,
	damageMax = 1400,
	baseXp = 14000,
	baseHAM = 64000,
	baseHAMmax = 90000,
	armor = 2,
	resists = {110,110,140,35,35,35,35,-1,-1},
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

	templates = {"object/mobile/dressed_stormtrooper_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "imperial_stormtrooper_tier_4", chance = 10000000}
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "stormtrooper_carbine",
	secondaryWeapon = "none",
	thrownWeapon = "thrown_weapons",

	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(carbineermaster,marksmanmaster),
	secondaryAttacks = {}
}

CreatureTemplates:addCreatureTemplate(fbase_stormtrooper_extreme, "fbase_stormtrooper_extreme")
