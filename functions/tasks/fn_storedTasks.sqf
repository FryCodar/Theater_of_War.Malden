If(!hasInterface)exitWith{};
#include "msot_components.hpp"
private ["_chk_state","_task_arr","_task_name","_task_Type","_task_description_long","_task_description_forHUD","_task_priority"];
params ["_idx","_state",["_target",objNull],["_added_txt",""]];


  _chk_state = toUpper(_state);_task_arr = [];_task_name = "";_task_Type = "";_task_description_long = "";_task_description_forHUD = "";
  _task_priority = 2;

switch(_idx)do
{
  case 0:{
            _task_name = "Task01";

            _task_description_long = (localize "STR_TXT_TSK1_LONG");

            _task_description_forHUD = (localize "STR_TXT_TSK1_SHORT");

            _task_Type  = "move";

         };
   case 1:{
            _task_name = "Task02";

            _task_description_long = (localize "STR_TXT_TSK2_LONG");

            _task_description_forHUD = (localize "STR_TXT_TSK2_SHORT");

            _task_Type  = "scout";
          };
   case 2:{
            
          };
};

if(count (missionNamespace getVariable [STRVAR_DO(missions_stored_tasks),[]]) > 0)then{_task_priority = 1;};

switch(typeName _target)do
{
  case "STRING":{{_task_arr = [player,[_task_name],[_task_description_long,_task_description_forHUD,_target],_target,_chk_state,_task_priority,true,_task_Type];};};
  case "OBJECT":{_task_arr = [player,[_task_name],[_task_description_long,_task_description_forHUD,""],_target,_chk_state,_task_priority,true,_task_Type];};
  case "ARRAY":{_task_arr = [player,[_task_name],[_task_description_long,_task_description_forHUD,""],_target,_chk_state,_task_priority,true,_task_Type];};
  default {
            hint format ["FEHLER IN TASK AUFRUF: TASK_MARK_POS_OBJ - VARIABLE >>> %1",(typeName _target)];
            diag_log format ["FEHLER IN TASK AUFRUF: TASK_MARK_POS_OBJ - VARIABLE >>> %1",(typeName _target)];
          };
};

If(count _task_arr > 0)then
{
  _task_arr call BIS_fnc_taskCreate;
};
