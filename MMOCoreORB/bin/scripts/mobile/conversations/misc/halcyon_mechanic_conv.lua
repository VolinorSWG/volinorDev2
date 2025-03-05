halcyonMechanicConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "HalcyonConvoHandler",
	screens = {}
}

quest_tease = ConvoScreen:new {
	id = "quest_tease",
	leftDialog = "@conversation/halcyon_mechanic:quest_tease", -- Get lost. I'm waiting for a customer.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(quest_tease);


greet_disk = ConvoScreen:new {
	id = "greet_disk",
	leftDialog = "@conversation/halcyon_mechanic:quest_start", -- Ah, I see you've come into the possession of a contract for one of my orders. Even though you're not the original customer, I might still be willing to honor it. I don't just deal with anyone though, so what do you say to a little test?
	stopConversation = "false",
	options = {
		{"@conversation/halcyon_mechanic:acklay_test", "hunt_task_acklay"}, -- What kind of test?
        {"@conversation/halcyon_mechanic:axkva_test", "hunt_task_axkva"}, -- What kind of test?
        {"@conversation/halcyon_mechanic:overlord_test", "hunt_task_nyax"} -- What kind of test?
	}
}
halcyonMechanicConvoTemplate:addScreen(greet_disk);

hunt_task_acklay = ConvoScreen:new {
	id = "hunt_task_acklay",
	leftDialog = "@conversation/halcyon_mechanic:hunt_acklay", -- If you want to prove you're worthy of one of my creations, go kill an Acklay for me. The big one.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_task_acklay);

hunt_task_axkva = ConvoScreen:new {
	id = "hunt_task_axkva",
	leftDialog = "@conversation/halcyon_mechanic:hunt_axkva", -- If you want to prove you're worthy of one of my creations, take out the leader of the Nightsister Clan on Dathomir. What's her name, Acksa-something?
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_task_axkva);

hunt_task_nyax = ConvoScreen:new {
	id = "hunt_task_nyax",
	leftDialog = "@conversation/halcyon_mechanic:hunt_nyax", -- If you want to prove you're worthy of one of my creations, go after that cult leader on Corellia.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_task_nyax);

hunt_in_progress = ConvoScreen:new {
	id = "hunt_in_progress",
	leftDialog = "@conversation/halcyon_mechanic:hunt_in_progress", -- What are you doing back already? Go take care of what I told you to do!
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_in_progress);

task_complete = ConvoScreen:new {
	id = "task_complete",
	leftDialog = "@conversation/halcyon_mechanic:good_job", -- Nice job, now I can be sure you won't an embarassment riding around in one of my speeders. Here ya go.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(task_complete);

already_done = ConvoScreen:new {
	id = "already_done",
	leftDialog = "@conversation/halcyon_mechanic:already_done", -- You got your reward already. You think those things grow on trees?
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(already_done);


addConversationTemplate("halcyonMechanicConvoTemplate", halcyonMechanicConvoTemplate);
