TalusGiantFynockCaveScreenPlay = ScreenPlay:new {
       numberOfActs = 1, 

	screenplayName = "TalusGiantFynockCaveScreenPlay",

	lootContainers = {
		7955671,
		7955670,
		7955663,
		7955708,
		7955728,
		7955686
        },
        
        lootLevel = 50, 
 
        lootGroups = {
                {
                        groups = {
                                {group = "color_crystals", chance = 160000},
                                {group = "junk", chance = 8240000},
                                {group = "melee_weapons", chance = 1000000},
                                {group = "clothing_attachments", chance = 300000},
                                {group = "armor_attachments", chance = 300000}
                        },
                        lootChance = 8000000
                }                                       
        },
        
        lootContainerRespawn = 1800
}
 
registerScreenPlay("TalusGiantFynockCaveScreenPlay", true)
 
function TalusGiantFynockCaveScreenPlay:start()
	if (isZoneEnabled("talus")) then
                self:spawnMobiles()
                self:initializeLootContainers()
        end
end

function TalusGiantFynockCaveScreenPlay:spawnMobiles()    


	spawnMobile("talus", "halcyon_freelancer", 300, 9.1, -7.9, -9.4, -51, 5625516)

	spawnMobile("talus", "halcyon_freelancer", 300, -8.2, -32.3, -59.3, -2, 5625518)
	spawnMobile("talus", "halcyon_hunter", 300, 13.2, -32.2, -78.2, -53, 5625518)
	spawnMobile("talus", "halcyon_hunter", 300, 9.9, -32.5, -76.1, 95, 5625518)
	spawnMobile("talus", "halcyon_freelancer", 300, 9.0, -32.7, -72.0, 9, 5625518)
	spawnMobile("talus", "halcyon_assassin", 300, 17.9, -32.9, -72.3, -125, 5625518)

	spawnMobile("talus", "halcyon_hunter", 300, 49.9, -38.9, -57.2, -145, 5625519)

	spawnMobile("talus", "halcyon_assassin", 300, 2.0, -37.0, -144.1, -63, 5625520)
	spawnMobile("talus", "halcyon_hunter", 300, 1.3, -36.7, -130.6, 59, 5625520)

	spawnMobile("talus", "halcyon_assassin", 300, 70.2, -37.0, -122.8, -128, 5625520)


	spawnMobile("talus", "halcyon_hunter", 300, 58.7, -48.8, -176.6, 71, 5625520)
	spawnMobile("talus", "halcyon_assassin", 300, 63.5, -49.1, -181.4, -29, 5625520)
	spawnMobile("talus", "halcyon_hunter", 300, 65.5, -49.1, -178.6, -85, 5625520)


	-- Quartermaster boss room
	spawnMobile("talus", "halcyon_quartermaster", 300, -10.8, -55.1, -261.8, -38, 5625522)
	spawnMobile("talus", "halcyon_hunter", 300, -23.9, -55.4, -257.1, 14, 5625522)
	spawnMobile("talus", "halcyon_hunter", 300, -20.7, -57.7, -241.6, 38, 5625522)
	spawnMobile("talus", "halcyon_hunter", 300, -4.5, -56.9, -241.1, -23, 5625522)
	spawnMobile("talus", "halcyon_hunter", 300, -1.3, -55.8, -231.3, -48, 5625522)
	spawnMobile("talus", "halcyon_assassin", 300, -18.7, -56.7, -220.1, 42, 5625522)
	spawnMobile("talus", "halcyon_hunter", 300, -6.0, -57.6, -209.5, -39, 5625522)

	spawnMobile("talus", "halcyon_freelancer", 300, -55.6, -62.0, -195.3, -15, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -61.0, -61.3, -161.9, -118, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -66.0, -61.6, -168.2, 24, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -87.9, -65.1, -176.5, -75, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -101.4, -63.8, -178.1, 38, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -101.6, -64.8, -162.5, 125, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -93.7, -66.0, -167.7, -143, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -96.5, -64.7, -177.8, -21, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -108.3, -61.6, -126.7, -93, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -95.0, -62.4, -125.7, 76, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -103.9, -62.5, -124.7, 140, 5625523)
	spawnMobile("talus", "halcyon_freelancer", 300, -100.7, -62.0, -129.7, -20, 5625523)

	spawnMobile("talus", "halcyon_hunter", 300, -62.8, -60.7, -97.4, -115, 5625524)
	spawnMobile("talus", "halcyon_freelancer", 300, -51.7, -60.8, -112.7, -142, 5625524)
	spawnMobile("talus", "halcyon_freelancer", 300, -53.8, -60.6, -102.5, -42, 5625524)
	spawnMobile("talus", "halcyon_hunter", 300, -53.1, -61.3, -79.0, -119, 5625524)
	spawnMobile("talus", "halcyon_hunter", 300, -40.8, -62.0, -98.4, 69, 5625524)
	spawnMobile("talus", "halcyon_freelancer", 300, -28.3, -61.9, -111.6, 41, 5625524)
	spawnMobile("talus", "halcyon_assassin", 300, -30.8, -62.6, -83.8, -94, 5625524)

	spawnMobile("talus", "halcyon_hunter", 300, -24.1, -71.8, -145.7, -25, 5625525)
	spawnMobile("talus", "halcyon_hunter", 300, -18.9, -71.0, -139.9, -57, 5625525)
	spawnMobile("talus", "halcyon_freelancer", 300, -18.9, -69.4, -132.0, -75, 5625525)
	spawnMobile("talus", "halcyon_freelancer", 300, -28.2, -69.7, -131.3, -6, 5625525)
	spawnMobile("talus", "halcyon_assassin", 300, -32.4, -72.3, -143.2, -103, 5625525)

	-- Under the rocks before boss
	spawnMobile("talus", "halcyon_assassin", 300, -84.2, -90.5, -156.6, -11, 5625523)
	spawnMobile("talus", "halcyon_hunter", 300, -78.1, -91.3, -156.1, -21, 5625523)
	spawnMobile("talus", "halcyon_hunter", 300, -73.0, -91.2, -160.3, 28, 5625523)

	-- Boss Area 1
	spawnMobile("talus", "halcyon_assassin", 1800, -94.2, -92.7, -92.9, 175, 5625526)
	spawnMobile("talus", "halcyon_assassin", 1800, -89.1, -92.1, -93.0, 175, 5625526)
	spawnMobile("talus", "halcyon_guildmaster", 1800, -91.9, -92.9, -97.5, 175, 5625526)
end

