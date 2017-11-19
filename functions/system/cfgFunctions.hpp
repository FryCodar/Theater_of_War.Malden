#include "msot_components.hpp"

class TAGADD
	{
     class system
		 {
			 class addMissionInfos {
				 												description = "Add defined Informations to System Storage";
			 											 };
			 class addToSystem {
				 										description = "Add defined Objects to System Storage";
			 									 };
			 class delFromSystem {
				 											description = "Delete defined Objects from System Storage";
			 										 };
			 class doClientRespawn {
				 												description = "Add and Remove Respawnpositions";
			 											 };
			 class doMissionCheck {
				 											description = "Framework for Missions";
			 											};
			 class getClientAction {
				 											 description = "AddAction Framework";
			 											 };
			 class getForcesCalc {
				 										 description = "Calculated number of enemies";
			 										 };
			 class getInfoArray {
														description = "Search SystemInfos in Arrays";
													};
			 class setUnitSkill {
														 description = "Set the Skill for each Units in Group";
 												 	};
			 class getWorkClasses {
				 											description = "Search available Classes";
			 											};
			 class setClientAction {
				 											 description = "Add a Action to Objects";
			 											 };
			 class setWorkClasses {
				 											description = "Load Classes to System";
															postInit = 1;
			 											};
			 class setRespawnVecs {
				 											description = "Respawn defined Vehicles";
			 											};
			 class testHandler {
				 										description = "test it";
			 									 };
		 };
	};
