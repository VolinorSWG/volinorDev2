theme_park_singing_mountain_clan_initiate = Creature:new {
  objectName = "@mob/creature_names:singing_mtn_clan_initiate",
  randomNameType = NAME_GENERIC,
  randomNameTag = true,
	mobType = MOB_NPC,
  socialGroup = "mtn_clan",
  faction = "mtn_clan",
  level = 50,
  chanceHit = 0.5,
  damageMin = 395,
  damageMax = 500,
  baseXp = 4916,
  baseHAM = 10000,
  baseHAMmax = 12000,
  armor = 1,
  resists = {30,30,75,-1,75,-1,-1,35,-1},
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

  templates = {"object/mobile/dressed_dathomir_sing_mt_clan_initiate.iff"},
  lootGroups = {},
  primaryWeapon = "melee_weapons",
	secondaryWeapon = "unarmed",
  conversationTemplate = "theme_park_smc_vurlene_aujante_mission_target_convotemplate",
  
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(theme_park_singing_mountain_clan_initiate, "theme_park_singing_mountain_clan_initiate")
