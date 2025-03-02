halcyon_guildmaster = Creature:new {
	customName = "Halcyon Guildmaster",
	socialGroup = "halcyon",
	mobType = MOB_NPC,
	faction = "",
	level = 350,
	chanceHit = 1,
	damageMin = 1645,
	damageMax = 2500,
	specialPercentage = 60,
	baseXp = 20948,
	baseHAM = 350000,
	baseHAMmax = 550000,
	armor = 3,
	resists = {80,80,60,80,25,45,80,70,25},
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

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance =  25 * 100000},
                {group = "power_crystals", chance = 25 * 100000},
                {group = "melee_weapons", chance = 25 * 100000},
                {group = "rifles", chance = 25 * 100000}
			},
			lootChance = 100 * 100000
		},
		{
			groups = {
				{group = "halcyon_vibro_motors", chance = 100 * 100000},
			},
			lootChance = 30 * 100000
		},
		{
			groups = {
				{group = "skill_buffs", chance = 80 * 100000},
				{group = "halcyon_paintings", chance = 20 * 100000},
			},
			lootChance = 20 * 100000
		},
        {
            groups = {
                {group = "halcyon_schematic", chance = 100 * 100000}
            },
            lootChance = 10 * 100000
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

CreatureTemplates:addCreatureTemplate(halcyon_guildmaster, "halcyon_guildmaster")