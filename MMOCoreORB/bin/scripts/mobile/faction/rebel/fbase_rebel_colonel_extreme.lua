fbase_rebel_colonel_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_colonel_extreme",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "rebel",
	faction = "rebel",
	level = 130,
	chanceHit = 4.0,
	damageMin = 795,
	damageMax = 1300,
	baseXp = 13000,
	baseHAM = 54000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {115,115,10,10,10,-1,10,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_lieutenant_colonel_human_male_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_human_male_02.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_moncal_female_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_rodian_female_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_rodian_male_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rebel_officer_tier_4", chance = 10000000}
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "rebel_carbine",
	secondaryWeapon = "rebel_pistol",
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(carbineermaster,marksmanmaster),
	secondaryAttacks = merge(pistoleermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_colonel_extreme, "fbase_rebel_colonel_extreme")
