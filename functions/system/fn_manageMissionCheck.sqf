If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "msot_components.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_system_fnc_manageMissionCheck

Description: manage Requests to MissionCheck

Examples:
            [] spawn MSOT_system_fnc_manageMissionCheck

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_check_arr"];
If(isNil "MANAGE_MISSION_HOLDER")then{MANAGE_MISSION_HOLDER = [];};
_check_arr = _this;
sleep (random 4);

switch(true)do
{
  case (missionNamespace getVariable [STRVAR_DO(write_to_missinfo),false]):{
                                                                             ARR_ADDVAR(MANAGE_MISSION_HOLDER,_check_arr);
                                                                             If(!missionNamespace getVariable [STRVAR_DO(manage_delete_missinfo),false])then
                                                                             {
                                                                              [] spawn MFUNC(system,workOffMisHolder);
                                                                             };
                                                                           };
  case (missionNamespace getVariable [STRVAR_DO(delete_from_missinfo),false]):{
                                                                                ARR_ADDVAR(MANAGE_MISSION_HOLDER,_check_arr);
                                                                                If(!missionNamespace getVariable [STRVAR_DO(manage_delete_missinfo),false])then
                                                                                {
                                                                                  [] spawn MFUNC(system,workOffMisHolder);
                                                                                };
                                                                              };
  case (!missionNamespace getVariable [STRVAR_DO(delete_from_missinfo),false]):{_check_arr spawn MFUNC(system,doMissionCheck);};
};
