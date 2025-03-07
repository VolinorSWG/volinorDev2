tutorial_0001_han_solo = Creature:new {
	customName = "Han Solo",
	randomNameTag = false,
	mobType = MOB_NPC,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 300,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/npe/npe_han_solo.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "tutorial_0001_han_solo_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(tutorial_0001_han_solo, "tutorial_0001_han_solo")
