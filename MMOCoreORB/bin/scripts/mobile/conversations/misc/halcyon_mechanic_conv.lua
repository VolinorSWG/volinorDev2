halcyonMechanicConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "HalcyonConvoHandler",
	screens = {}
}

quest_tease = ConvoScreen:new {
	id = "quest_tease",
	leftDialog = "@celebrity/kole:quest_tease", -- Get lost. I'm waiting 
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(quest_tease);

greet_disk = ConvoScreen:new {
	id = "greet_disk",
	leftDialog = "@celebrity/kole:good_work", -- Ah, I see you've come into the possession of a contract for one of my orders. Even though you're not the original customer, I might still be willing to honor it. I don't just deal with anyone though, so what do you say to a little test?
	stopConversation = "false",
	options = {
		{"@celebrity/kole:what_now", "test_select"}, -- What kind of test?
		{"@celebrity/kole:see_ya", "good_bye"}, -- No thanks, I'll be going now.
	}
}
halcyonMechanicConvoTemplate:addScreen(greet_disk);

greet_disk = ConvoScreen:new {
	id = "greet_disk",
	leftDialog = "@celebrity/kole:good_work", -- Ah, I see you've come into the possession of a contract for one of my orders. Even though you're not the original customer, I might still be willing to honor it. I don't just deal with anyone though, so what do you say to a little test?
	stopConversation = "false",
	options = {
		{"@celebrity/kole:what_now", "hunt_task_acklay"}, -- What kind of test?
        {"@celebrity/kole:what_now", "hunt_task_axkva"}, -- What kind of test?
        {"@celebrity/kole:what_now", "hunt_task_overlord"}, -- What kind of test?
		{"@celebrity/kole:see_ya", "good_bye"}, -- Nevermind.
	}
}
halcyonMechanicConvoTemplate:addScreen(greet_disk);

hunt_task_acklay = ConvoScreen:new {
	id = "hunt_task_acklay",
	leftDialog = "@celebrity/kole:youre_done", -- If you want to prove you're worthy of one of my creations, go kill an Acklay for me. The big one.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_task_acklay);

hunt_task_axkva = ConvoScreen:new {
	id = "hunt_task_axkva",
	leftDialog = "@celebrity/kole:youre_done", -- If you want to prove you're worthy of one of my creations, take out the leader of the Nightsister Clan on Dathomir. What's her name, Acksa-something?
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_task_axkva);

hunt_task_overlord = ConvoScreen:new {
	id = "hunt_task_overlord",
	leftDialog = "@celebrity/kole:youre_done", -- If you want to prove you're worthy of one of my creations, go after one of those Death Watch Overlords.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(hunt_task_overlord);

task_complete = ConvoScreen:new {
	id = "task_complete",
	leftDialog = "@celebrity/kole:good_bye", -- Nice job, now I can be sure you won't an embarassment riding around in one of my speeders. Here ya go.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(good_bye);

good_bye = ConvoScreen:new {
	id = "good_bye",
	leftDialog = "@celebrity/kole:good_bye", -- Good luck, buddy.
	stopConversation = "true",
	options = {
	}
}
halcyonMechanicConvoTemplate:addScreen(good_bye);


addConversationTemplate("halcyonMechanicConvoTemplate", halcyonMechanicConvoTemplate);
