If(isMultiplayer)then{If(!isServer)exitWith{};};

#include "..\msot_macros.hpp"

private ["_main_pos","_main_radius","_base","_bag","_all_Obs","_cutter","_force_calc","_xtra_pos","_triggername","_script","_stri"];
params ["_idx"];

_main_pos = [4856.38,11104.6,0];
_main_radius = 700;

switch(_idx)do
{
  case 0:{
            MSOT_MIS_POS = [_main_pos,(_main_radius - 100),30] call MFUNC(geometry,getCirclePos);
            If(count MSOT_MIS_POS > 0)then
            {
              _base = [1,MSOT_MIS_POS,(random 360)] call MFUNC(creating,setBase);
              _all_Obs = (_base select 0);
              _bag = createVehicle ["B_OutdoorPack_blu",MSOT_MIS_POS,[],0,"NONE"];
              _cutter = createVehicle ["Land_ClutterCutter_large_F",MSOT_MIS_POS,[],0,"CAN_COLLIDE"];
              ARR_ADDVAR(_all_Obs,_cutter);
              ["VEHICLES",_main_pos,_all_Obs] call MFUNC(system,addToSystem);
              {_bag addItemCargoGlobal _x}forEach [["ItemMap",2],["Binocular",1],["FirstAidKit",2]];
              _script = {[] spawn {[2] execVM "Missions\mission_1.sqf"};};
              ["MAINTARGETS",_main_pos,[_bag,"",_script]] call MFUNC(system,addMissionInfos);
              ["MAINACTIONS",[_bag,"SUCCESS","ext\addMove1.sqf",true]] call MSOT_system_fnc_addMissionInfos;
              ["ACTIONSTORAGE",[_bag,"ACTION","GREEN","STR_AddAction1"]] call MSOT_system_fnc_addMissionInfos;
              _force_calc = [([] call MFUNC(system,getPlayerCount)),([] call MFUNC(usage,checkNight))] call MFUNC(system,getForcesCalc);
              [_main_pos,_main_radius,(_force_calc select 0),(_force_calc select 1),"MIXED_ALL","AREA"] call MFUNC(creating,setUnits);
              _script = {[(_this select 1)] call MFUNC(system,setTargetBehavior);sleep 6;};
              _triggername = ["DETECTED",_main_pos,_main_radius] call MFUNC(system,setTrigger);
              ["MAINTRIGGER",_main_pos,[_triggername,_script,0,false]] call MFUNC(system,addMissionInfos);
              _xtra_pos = [4345.19,10738.7,0.00254822];
              [0,"AUTOASSIGNED",_xtra_pos] call MFUNC(tasks,setTask);
              _script = {
                          [0,"SUCCEEDED"] call MFUNC(tasks,setTask);
                          sleep 6;
                          [1,"AUTOASSIGNED"] call MFUNC(tasks,setTask);
                          sleep 1;
                          [1] execVM "Missions\mission_1.sqf";
                        };
              _triggername = ["ACTIVATE",_xtra_pos,13] call MFUNC(system,setTrigger);
              ["MAINTRIGGER",_xtra_pos,[_triggername,_script,0,false]] call MFUNC(system,addMissionInfos);

            };

         };
  case 1:{
            _script = {
                        [1,"SUCCEEDED"] call MFUNC(tasks,setTask);
                      };
            _triggername = ["ACTIVATE",MSOT_MIS_POS,2] call MFUNC(system,setTrigger);
            ["MAINTRIGGER",MSOT_MIS_POS,[_triggername,_script,0,false]] call MFUNC(system,addMissionInfos);
         };
   case 2:{
            sleep 2;
            _script = {[(_this select 1)] call MFUNC(system,delFromSystem);};
            _triggername = ["LEAVE",_main_pos,(_main_radius + 100)] call MFUNC(system,setTrigger);
            ["MAINTRIGGER",_main_pos,[_triggername,_script,0,true]] call MFUNC(system,addMissionInfos);
            sleep 4;
            [0] execVM "Missions\mission_2.sqf";
          };
};
