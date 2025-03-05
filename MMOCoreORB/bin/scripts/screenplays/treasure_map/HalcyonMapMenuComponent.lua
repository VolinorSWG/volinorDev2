local ObjectManager = require("managers.object.object_manager")

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

function HalcyonMapMenuComponent:handleHalcyonMapSuiCallback(pCreature, pSui, eventIndex)
	return 0
end


function HalcyonMapMenuComponent:doReadMap(pObject, pPlayer)
	if (pObject == nil or pPlayer == nil) then
		return
	end

	local suiManager = LuaSuiManager()
	suiManager:sendMessageBox(pObject, pPlayer, "@treasure_map/treasure_map:title_halcyon_disk", "@treasure_map/treasure_map:text_halcyon_disk", "@treasure_map/treasure_map:confirm", "HalcyonMapMenuComponent", "handleHalcyonMapSuiCallback")

    -- Start quest to talk to the NPC if not already on the quest and not already completed
    local currStage = HalcyonMapMenuComponent:getStage(pPlayer)
    if (currStage == nil) then
        HalcyonMapMenuComponent:setStage(pPlayer, 1)
    end

	-- DEV ONLY, DELETE THIS WHEN DONE TESTING
	HalcyonMapMenuComponent:setStage(pPlayer, 1)
    
end

function HalcyonMapMenuComponent:setStage(pPlayer, num)
    writeScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "currentStage", num)
end

function HalcyonMapMenuComponent:getStage(pPlayer)
    return tonumber(readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "currentStage"))
end

function HalcyonMapMenuComponent:setUpHuntObjective(pPlayer, target)
	local huntTarget = target
	writeScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTarget", target)
	writeScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetCount", 0)
	writeScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetGoal", 1)

	dropObserver(KILLEDCREATURE, "HalcyonMapMenuComponent", "notifyKilledHuntTarget", pPlayer)
	createObserver(KILLEDCREATURE, "HalcyonMapMenuComponent", "notifyKilledHuntTarget", pPlayer)
end

function HalcyonMapMenuComponent:notifyKilledHuntTarget(pPlayer, pVictim)
	if (pVictim == nil or pPlayer == nil) then
		return 0
	end

	local huntTarget = readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTarget")
	local targetCount = tonumber(readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetCount"))
	local targetGoal = tonumber(readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetGoal"))

	if (SceneObject(pVictim):getZoneName() ~= SceneObject(pPlayer):getZoneName() or not CreatureObject(pPlayer):isInRangeWithObject(pVictim, 80)) then
		return 0
	end

	if (string.find(SceneObject(pVictim):getObjectName(), huntTarget)) then
		targetCount = targetCount + 1
		writeScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetCount", targetCount)

		if (targetCount >= targetGoal) then
			CreatureObject(pPlayer):sendSystemMessage("@conversation/halcyon_mechanic:hunt_task_complete") -- You have fulfilled the task given to you. Return to the Black Market Mechanic for your reward.
			HalcyonMapMenuComponent:setStage(pPlayer, 5)
			dropObserver(KILLEDCREATURE, "HalcyonMapMenuComponent", "notifyKilledHuntTarget", pPlayer)
			return 1
		end
	end


	return 0
end

function HalcyonMapMenuComponent:playerLoggedIn(pPlayer)
	if (HalcyonMapMenuComponent:getStage(pPlayer) == 2 or HalcyonMapMenuComponent:getStage(pPlayer) == 3 or HalcyonMapMenuComponent:getStage(pPlayer) == 4) then
		local targetCount = tonumber(readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetCount"))
		local targetGoal = tonumber(readScreenPlayData(pPlayer, "HalcyonMapMenuComponent", "huntTargetGoal"))

		if (targetCount < targetGoal) then
			createObserver(KILLEDCREATURE, "HalcyonMapMenuComponent", "notifyKilledHuntTarget", pPlayer)
		end
	end
end

function HalcyonMapMenuComponent:giveReward(pPlayer)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return
	end

	-- Give the player the schematic
	local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/koro2_speeder_schematic.iff", -1)

	if (pItem ~= nil) then
		SceneObject(pItem):sendTo(pPlayer)
	end

	HalcyonMapMenuComponent:setStage(pPlayer, 8)
end

-- Conversation Handler --
HalcyonConvoHandler = conv_handler:new {
	themePark = nil
}

function HalcyonConvoHandler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	local convoTemplate = LuaConversationTemplate(pConvTemplate)

	if (HalcyonMapMenuComponent:getStage(pPlayer) == 1) then
		return convoTemplate:getScreen("greet_disk")
	elseif (HalcyonMapMenuComponent:getStage(pPlayer) == 2 or HalcyonMapMenuComponent:getStage(pPlayer) == 3 or HalcyonMapMenuComponent:getStage(pPlayer) == 4) then
		return convoTemplate:getScreen("hunt_in_progress")
	elseif (HalcyonMapMenuComponent:getStage(pPlayer) == 5) then
		return convoTemplate:getScreen("task_complete")
	elseif (HalcyonMapMenuComponent:getStage(pPlayer) == 8) then
		return convoTemplate:getScreen("already_done")
	elseif (HalcyonMapMenuComponent:getStage(pPlayer) == nil) then
		return convoTemplate:getScreen("quest_tease")
	end
end

function HalcyonConvoHandler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)

	local pConvScreen = screen:cloneScreen()
	local clonedConversation = LuaConversationScreen(pConvScreen)

	local screenID = screen:getScreenID()
	local playerID = SceneObject(pPlayer):getObjectID()

	if (screenID == "hunt_task_acklay") then
		HalcyonMapMenuComponent:setStage(pPlayer, 2)
		HalcyonMapMenuComponent:setUpHuntObjective(pPlayer, "acklay")
	elseif (screenID == "hunt_task_axkva") then
		HalcyonMapMenuComponent:setStage(pPlayer, 3)
		HalcyonMapMenuComponent:setUpHuntObjective(pPlayer, "axkva_min")
	elseif (screenID == "hunt_task_nyax") then
		HalcyonMapMenuComponent:setStage(pPlayer, 4)
		HalcyonMapMenuComponent:setUpHuntObjective(pPlayer, "lord_nyax")
	elseif (screenID == "task_complete") then
		if (HalcyonMapMenuComponent:getStage(pPlayer) == 5) then
			HalcyonMapMenuComponent:giveReward(pPlayer)
		end
	end

	return pConvScreen
end