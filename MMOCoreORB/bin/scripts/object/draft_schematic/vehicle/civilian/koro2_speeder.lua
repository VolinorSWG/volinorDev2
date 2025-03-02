
object_draft_schematic_vehicle_civilian_koro2_speeder = object_draft_schematic_vehicle_civilian_shared_koro2_speeder:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Koro-2 Speeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 1,
	factoryCrateSize = 0,
   
	xpType = "crafting_general",
	xp = 1800,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame", "engine_koro2"},
	ingredientSlotType = {0, 0, 1},
	resourceTypes = {"metal_nonferrous", "metal_ferrous", "object/tangible/component/vehicle/shared_veh_engine_koro2.iff"},
	resourceQuantities = {1125, 3125, 1},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/koro2_speeder_deed.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_koro2_speeder, "object/draft_schematic/vehicle/civilian/koro2_speeder.iff")
