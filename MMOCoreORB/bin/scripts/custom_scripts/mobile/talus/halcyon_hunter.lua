halcyon_hunter = Creature:new {
	customName = "a Halcyon Hunter",
	socialGroup = "halcyon",
	mobType = MOB_NPC,
	faction = "",
	level = 230,
	chanceHit = 1.75,
	damageMin = 700,
	damageMax = 1100,
	baseXp = 10081,
	baseHAM = 79000,
	baseHAMmax = 96000,
	armor = 1,
	resists = {70,65,50,60,60,25,15,50,10},
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
	scale = 1.15,

	templates = {
		"object/mobile/dressed_black_sun_thug.iff",
		"object/mobile/dressed_black_sun_henchman.iff",
		"object/mobile/dressed_black_sun_assassin.iff",
		"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance =  10 * 100000},
				{group = "armor_attachments", chance = 10 * 100000},
                {group = "melee_weapons", chance = 25 * 100000},
                {group = "rifles", chance = 15 * 100000},
				{group = "carbines", chance = 15 * 100000},
				{group = "pistols", chance = 15 * 100000},
				{group = "halcyon_vibro_motors", chance =  10 * 100000},
			},
			lootChance = 100 * 100000
		},
		{
			groups = {
				{group = "skill_buffs", chance = 80 * 100000},
				{group = "halcyon_paintings", chance = 20 * 100000},
			},
			lootChance = 7 * 100000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "dark_trooper_weapons",
	secondaryWeapon = "none",
	conversationTemplate = "",
	thrownWeapon = "thrown_weapons",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(halcyon_hunter, "halcyon_hunter")