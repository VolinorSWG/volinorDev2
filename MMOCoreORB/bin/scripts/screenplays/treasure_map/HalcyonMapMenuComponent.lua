local ObjectManager = require("managers.object.object_manager")

local mapStringName = { 
		"pirate1", 
		"pirate2", 
		"bountyhunter1", 
		"hedon1", 
		"pirate3", 
		"pirate4", 
		"pirate5", 
		"pirate6", 
		"pirate7", 
		"pirate8", 
		"pirate9",
		"pirate10",
		"pirate11",
		"pirate12",
		"pirate13",
		"pirate14",
		"pirate15",
		"pirate16",
		"pirate17",
		"pirate18",
		"pirate19",
	}

local treasureMapData = {
	{ planet = "corellia", x = 3400, y = -1400, bark = true }, -- Pirate 1
}

local ambushMobs = {
	-- moblist, loot level low, high, big game points
	{{"pirate_leader","pirate_armsman","pirate_armsman"},25,50, 1100, 10 * 60 * 1000},-- cor
}


HalcyonMapMenuComponent = { }

function HalcyonMapMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)

	menuResponse:addRadialMenuItem(120, 3, "@treasure_map/treasure_map:use") -- Read
end

function HalcyonMapMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end

	if (SceneObject(pObject):isASubChildOf(pPlayer) == false) then
		CreatureObject(pPlayer):sendSystemMessage("@treasure_map/treasure_map:sys_not_in_inv") -- The treasure map must be in your inventory for you to use it!
		return 0
	end

	if (HalcyonMapMenuComponent:getMapType(pObject) == 0) then
		CreatureObject(pPlayer):sendSystemMessage("@treasure_map/treasure_map:map_fail") -- This map is obviously a fake.
		return 0
	end

	if (selectedID == 120) then
		HalcyonMapMenuComponent:doReadMap(pObject, pPlayer)
	end
	return 0
end

function HalcyonMapMenuComponent:spawnTreasureDefenders(pObject, pPlayer, x, z, y, mapType)
	if (pObject == nil or pPlayer == nil) then
		return
	end

	local zoneName = SceneObject(pPlayer):getZoneName()
	local mapType = HalcyonMapMenuComponent:getMapType(pObject)
	local mapData = treasureMapData[mapType]
	local firstSpawnPoint, secondSpawnPoint, thirdSpawnPoint
	--[[if (mapType ~= 4) then
		firstSpawnPoint = getSpawnPoint(zoneName, x, y, 10, 20)
	end]]
	big_game_hunter:contentXP(pPlayer, treasureMapMobs[mapType][4])

	if mapType == 4 then
		spawnMobile(mapData.planet, "canyon_krayt_dragon", 0, x, z, y, 0, 0)
	else
		for i=1,#treasureMapMobs[mapType][1] do
			local sp = getSpawnPoint(zoneName, x, y, 10, 20)
			if sp ~= nil then
				local pMobile = spawnMobile(mapData.planet, treasureMapMobs[mapType][1][i], 0, sp[1], sp[2], sp[3], 0, 0)
				if pMobile ~= nil then
					CreatureObject(pMobile):engageCombat(pPlayer)
					local despawnTimer = treasureMapMobs[mapType][5]
					if util:isDev() then
						despawnTimer = 30 * 1000
					end
					createEvent(despawnTimer, "HalcyonMapMenuComponent", "despawnAttackers", pPlayer, tostring(SceneObject(pMobile):getObjectID()))
					if i == 1 and treasureMapData[mapType].bark then
						spatialChat(pMobile, "@treasure_map/treasure_map:bark_" .. mapStringName[mapType])
					end
				end
			end
		end
	end
	
end


function HalcyonMapMenuComponent:handleTreasureMapSuiCallback(pCreature, pSui, eventIndex)
	local pGhost = CreatureObject(pCreature):getPlayerObject()

	if (pGhost == nil) then
		return 0
	end

	local cancelPressed = (eventIndex == 1)

	if (cancelPressed or pCreature == nil) then
		return 0
	end

	local suiBox = LuaSuiBox(pSui)
	local pUsingObject = suiBox:getUsingObject()

	if (pUsingObject == nil) then
		return 0
	end

	local mapType = HalcyonMapMenuComponent:getMapType(pUsingObject)

	local mapData = treasureMapData[mapType]
	if (CreatureObject(pCreature):getZoneName() ~= mapData.planet) then
		CreatureObject(pCreature):sendSystemMessage("@treasure_map/treasure_map:wrong_planet") -- The coordinates stored in the map data do not appear to be for this planet.
		return 0
	end
	local playerID = CreatureObject(pCreature):getObjectID()

	local currentWaypointID = readData(playerID .. ":treasureMapSearchAreaWaypointID")
	local exactWaypointID = readData(playerID .. ":treasureMapExactWaypointID")
	local pExactWaypoint = getSceneObject(currentWaypointID)
	local pWaypoint = getSceneObject(currentWaypointID)

	if (pWaypoint ~= nil or pExactWaypoint ~= nil) then
		CreatureObject(pCreature):sendSystemMessage("@treasure_map/treasure_map:sys_waypoint_exists") -- A waypoint to this location already exists in your datapad.
		return 0
	end

	local spawnPoint
	local zoneName = SceneObject(pCreature):getZoneName()

	if (mapType == 4) then
		spawnPoint = getSpawnPoint(zoneName, mapData.x, mapData.y, 1, 50, true)
	else
		spawnPoint = getSpawnPoint(zoneName, mapData.x, mapData.y, 1, 2000)
	end

	local waypointID = PlayerObject(pGhost):addWaypoint(mapData.planet, "@treasure_map/treasure_map:waypoint_name", "", spawnPoint[1], spawnPoint[3], WAYPOINTGREEN, true, true, WAYPOINTTREASUREMAP, 0)
	local activeAreaID = self:spawnSearchArea(mapType, pCreature, spawnPoint[1], spawnPoint[3])
	writeData(playerID .. ":treasureMapSearchAreaWaypointID", waypointID)
	writeData(playerID .. ":treasureMapSearchAreaActiveAreaID", activeAreaID)
end


function HalcyonMapMenuComponent:doReadMap(pObject, pPlayer)
	if (pObject == nil or pPlayer == nil) then
		return
	end

	local mapType = HalcyonMapMenuComponent:getMapType(pObject)
	local suiManager = LuaSuiManager()
	suiManager:sendMessageBox(pObject, pPlayer, "@treasure_map/treasure_map:title_" .. mapStringName[mapType], "@treasure_map/treasure_map:text_" .. mapStringName[mapType], "@treasure_map/treasure_map:store_waypoint", "HalcyonMapMenuComponent", "handleTreasureMapSuiCallback")

    -- Start quest to talk to the NPC
    
end

