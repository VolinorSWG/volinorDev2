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
	
end


function HalcyonMapMenuComponent:handleHalcyonMapSuiCallback(pCreature, pSui, eventIndex)
	return 0
end


function HalcyonMapMenuComponent:doReadMap(pObject, pPlayer)
	if (pObject == nil or pPlayer == nil) then
		return
	end

	local suiManager = LuaSuiManager()
	suiManager:sendMessageBox(pObject, pPlayer, "@treasure_map/treasure_map:title_halcyon_disk", "@treasure_map/treasure_map:text_halcyon_disk", "@treasure_map/treasure_map:confirm", "HalcyonMapMenuComponent", "handleHalcyonMapSuiCallback")

    -- Start quest to talk to the NPC if not already on the quest
    local currStage = HalcyonMapMenuComponent:getStage(pPlayer)
    if (currStage == nil) then
        HalcyonMapMenuComponent:setStage(pPlayer, 1)
    end
    
end

function HalcyonMapMenuComponent:setStage(pPlayer, num)
    writeScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "currentStage", num)
end

function HalcyonMapMenuComponent:getStage(pPlayer)
    return tonumber(readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "currentStage"))
end

function HalcyonMapMenuComponent:setupHuntTask(pPlayer)
    local stageNumber = HalcyonMapMenuComponent:getStage(pPlayer)

end