giant_kimogila = Creature:new {
	objectName = "@mob/creature_names:giant_kimogila",
	socialGroup = "kimogila",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 139,
	chanceHit = 5.5,
	damageMin = 875,
	damageMax = 1460,
	baseXp = 13178,
	baseHAM = 65000,
	baseHAMmax = 80000,
	armor = 2,
	resists = {135,180,20,180,20,20,200,20,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_kimogila.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.15,
	lootGroups = {
	    {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3780000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareaknockdown",""}, {"dizzyattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(giant_kimogila, "giant_kimogila")
