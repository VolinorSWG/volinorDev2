fbase_rebel_master_sergeant_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_master_sergeant_hard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "rebel",
	faction = "rebel",
	level = 57,
	chanceHit = 0.57,
	damageMin = 430,
	damageMax = 570,
	baseXp = 5700,
	baseHAM = 11000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {5,5,5,5,5,5,5,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_sergeant_major_bothan_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_major_human_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_major_moncal_male_01.iff",
		"object/mobile/dressed_rebel_sergeant_major_moncal_female_01.iff",
		"object/mobile/dressed_rebel_sergeant_major_rodian_female_01.iff",
		"object/mobile/dressed_rebel_sergeant_major_old_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rebel_tier_2", chance = 10000000}
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
	primaryAttacks = merge(marksmanmaster,carbineermid),
	secondaryAttacks = merge(marksmanmaster,pistoleermid)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_master_sergeant_hard, "fbase_rebel_master_sergeant_hard")
