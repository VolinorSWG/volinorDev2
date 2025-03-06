package.path = package.path .. ";scripts/screenplays/themepark/?.lua;scripts/screenplays/?.lua;scripts/screenplays/dungeon/corellian_corvette/?.lua"
require("screenplay")
require("conv_handler")
require("themeParkLogic")
require("corvetteTicketGiverLogic")
require("corvetteTicketTakerLogic")

-- SUI
--require("sui.custom.SuiSample")
require("sui.SuiCalibrationGame1")
require("sui.SuiCalibrationGame2")
require("sui.SuiCalibrationGame3")
require("sui.SuiCalibrationGame4")
require("sui.SuiInputBox")
require("sui.SuiKeypad")
require("sui.SuiListBox")
require("sui.SuiMessageBox")
require("sui.SuiQuestPopup")
require("sui.SuiTemplate")
require("sui.SuiTransferBox")
require("sui.custom.SuiAmpPuzzle")
require("sui.custom.SuiArrayPuzzle")
require("sui.custom.SuiFsCrafting1Analyzer")
require("sui.custom.SuiFsCrafting1Calibrator")
require("sui.custom.SuiPhase1AccessTerminal")
require("sui.custom.SuiProcessorPuzzle")
require("sui.custom.SuiRadiationSensor")
require("sui.custom.SuiReceiverPuzzle")

includeFile("../custom_scripts/screenplays/infinity/caves/talus_giant_fynock_cave.lua")

--Treasure Maps
includeFile("../custom_scripts/screenplays/treasure_map/HalcyonMapMenuComponent.lua")
