If(!hasInterface)exitWith{};
#include "msot_components.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_system_fnc_getClientAction

Description: Get AddAction Information

Parameters: [OBJECT,CALLER,ID,ARGUMENTS]


Returns: Nothing

Examples:
          _this spawn MSOT_system_fnc_setClientAction

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_holder","_search_it","_founded_arr","_end_it","_set_arr"];
params ["_obj","_caller","_id","_arguments"];

If(!(_obj getVariable [STRVAR_DO(in_use),false]))then{
_obj setVariable [STRVAR_DO(in_use),true,true];
_holder = missionNamespace getVariable [STRVAR_DO(action_storage),[]];
If(count _holder > 0)then
{
  _search_it = [2,_holder,_obj] call MFUNC(system,getInfoArray);
  If(count _search_it > 0)then
  {
    _end_it = false;
    _founded_arr = (_holder select (_search_it select 0));
    switch(typeName (_founded_arr select 2))do
    {
      case "STRING":{If(count (_founded_arr select 2) > 0)then
                     {
                       _handle = _this execVM (_founded_arr select 2);
                       waitUntil{scriptDone _handle};
                       _end_it = missionNamespace getVariable [STRVAR_DO(action_success),false];
                     };
                    };
      case "CODE":{_end_it = _this call (_founded_arr select 2)};
    };
    If(_end_it)then
    {
      REMOTE_NOREXESM(_obj,removeAllActions,([0,-2] select isDedicated));
      If(_founded_arr select 3)then{SET_POSATLM(_obj,(getPosATL _obj),15);};
      _set_arr = ["MAINTARGETS",_obj,(_founded_arr select 1),(_founded_arr select 3)];
      REMOTE_TRIEXESM(_set_arr,system,doMissionCheck,([0,-2] select isDedicated));
    };
  };
};
If(!isNull _obj)then{_obj setVariable [STRVAR_DO(in_use),false,true];};
};
