--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_ship_hutt_heavy_s02_tier4 = object_ship_shared_hutt_heavy_s02_tier4:new {
	objectName = "@space/space_mobile_type:hutt_heavy_s02_tier4",

	name = "hutt_heavy_tier4",
	type = "hutt_heavy_s02_tier4",
	faction = "hutt",
	difficulty = "tier4",

	slideFactor = 1.65,
	chassisHitpoints = 2304,
	chassisMass = 5000,

	gameObjectType = 536870919,

	reactor = {name = "rct_generic", hitpoints = 2488.32, armor = 2488.32},
	engine = {name = "eng_incom_fusialthrust", hitpoints = 2488.32, armor = 2488.32, speed = 45.89, acceleration = 11.15, deceleration = 9.51, yaw = 20, yawRate = 41.96, pitch = 25.24, pitchRate = 50.48, roll = 31.25, rollRate = 56.93},
	shield_0 = {name = "shd_generic", hitpoints = 2488.32, armor = 2488.32, front = 9953.28, back = 9953.28, regen = 15},
	armor_0 = {name = "arm_generic", hitpoints = 5750.78, armor = 5750.78},
	armor_1 = {name = "arm_generic", hitpoints = 5750.78, armor = 5750.78},
	capacitor = {name = "cap_generic", hitpoints = 2488.32, armor = 2488.32, energy = 5000, rechargeRate = 100},
	weapon_0 = {name = "wpn_incom_disruptor", hitpoints = 2488.32, armor = 2488.32, rate = 0.78, drain = 1, maxDamage = 302.93, minDamage = 197.61, shieldEfficiency = 0.56, armorEfficiency = 0.56, ammo = 0, ammo_type = 0},
	weapon_1 = {name = "wpn_incom_disruptor", hitpoints = 2488.32, armor = 2488.32, rate = 0.78, drain = 1, maxDamage = 302.93, minDamage = 197.61, shieldEfficiency = 0.56, armorEfficiency = 0.56, ammo = 0, ammo_type = 0},
	weapon_3 = {name = "wpn_seinar_concussion_missile_s01", hitpoints = 2488.32, armor = 2488.32, rate = 3, drain = 1, maxDamage = 908.79, minDamage = 395.22, shieldEfficiency = 0.75, armorEfficiency = 0.75, ammo = 4, ammo_type = 19},
}

ObjectTemplates:addTemplate(object_ship_hutt_heavy_s02_tier4, "object/ship/hutt_heavy_s02_tier4.iff")
