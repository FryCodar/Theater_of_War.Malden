#include "msot_components.hpp"
//MACROS NOCH NICHT EINGEARBEITET
private ["_chk_state_arr","_chk_new_state_arr","_given_task_name","_setter_arr","_loop_idx","_found","_x","_searched_part",
         "_save_arr","_pl_new","_pl_found"];

params ["_info_arr","_settask_arr"];

_chk_state_arr = ["CREATED","ASSIGNED","AUTOASSIGNED"];
_chk_new_state_arr = ["SUCCEEDED","FAILED","CANCELED"];

//Prüfe, ob im Task Server Store Daten vorhanden sind
If(count (missionNamespace getVariable ["msot_task_store",[]]) > 0)then
{
  // Aufschlüsseln der übergebenen Parameter
  _given_task_name = (_info_arr select 0); _setter_arr = (_info_arr select 1);
  _loop_idx = 0;
  _found = false;

  // Suche Params TaskName im Server Store
  {
   If((_x select 0) isEqualTo _given_task_name)then{_found = true;_loop_idx = _forEachIndex;};
  }forEach (missionNamespace getVariable "msot_task_store");

  //Habe Params TaskName im Server Store gefunden
  If(_found)then
  {
    _searched_part = (missionNamespace getVariable "msot_task_store") select _loop_idx;
    _searched_setter = (_searched_part select 1);

    If(isServer || isDedicated)then
    {
      If((_searched_setter select 1) != (_setter_arr select 1))then
      {
        If((_setter_arr select 1) In _chk_new_state_arr)then
        {
          _save_arr = (missionNamespace getVariable "msot_task_store");
          _save_arr set [_loop_idx,(_loop_idx * -1)]; _save_arr = _save_arr - [(_loop_idx * -1)];
          missionNamespace setVariable ["msot_task_store",_save_arr,true];
        };
      };
    };
    If(hasInterface)then{
        //Im Player Store sind daten Enthalten
        If(count (player getVariable ["msot_pl_tasks",[]]) > 0)then
        {
          //Prüfe ob TaskName im PlayerSTore ist- ist vorhanden
          If(_given_task_name In (player getVariable "msot_pl_tasks"))then
          {
            _pl_new = "";
            _pl_found = false;
            {
              If(_x isEqualTo _given_task_name && (toUpper([_x] call BIS_fnc_taskState)) != (_setter_arr select 1))then
              {
                switch(true)do
                {
                  case ((_setter_arr select 1) In _chk_state_arr):{_settask_arr call BIS_fnc_taskCreate;};
                  case ((_setter_arr select 1) In _chk_new_state_arr):{_pl_new = _x;_pl_found = true;_settask_arr call BIS_fnc_taskCreate;};
                };
              };
            }forEach (player getVariable "msot_pl_tasks");
            If(_pl_found)then
            {
              _save_arr = player getVariable "msot_pl_tasks";
              _save_arr = _save_arr - [_pl_new];
              player setVariable ["msot_pl_tasks",_save_arr,false];
            };
          }else{
                //TaskName ist nicht im PlayerStore vorhanden - schreibe TaskName ein und kreiere Task (JIP)
                _save_arr = player getVariable "msot_pl_tasks";
                _save_arr pushBack _given_task_name;
                player setVariable ["msot_pl_tasks",_save_arr,false];
                _settask_arr call BIS_fnc_taskCreate;
               };
        }else{
              //Im Player Store sind keine Daten enthalten - schreibe TaskName ein und kreiere Task (JIP)
              player setVariable ["msot_pl_tasks",[_given_task_name],false];
              _settask_arr call BIS_fnc_taskCreate;
             }
      };

  }else{
         //Habe Params TaskName nicht im Server Store gefunden

         If(isServer || isDedicated)then
         {
           //Schreibe Params Infos in Server Store
           _save_arr = (missionNamespace getVariable "msot_task_store");
           _save_arr pushBack _info_arr;
           missionNamespace setVariable ["msot_task_store",_save_arr,true];
         };
         If(hasInterface)then
         {
            //Schreibe TaskName in Player Store und kreiere Task
            _save_arr = player getVariable "msot_pl_tasks";
            _save_arr pushBack _given_task_name;
            player setVariable ["msot_pl_tasks",_save_arr,false];
            _settask_arr call BIS_fnc_taskCreate;
          };

       };
}else{
        // Im Task Server Store sind keine Daten vorhanden
        if(isServer || isDedicated)then
        {
          //Schreibe Params Infos in den Server Store
          missionNamespace setVariable ["msot_task_store",[_info_arr],true];
        };
        //Schreibe TaskName in Player Store und kreiere Task
        If(hasInterface)then{player setVariable ["msot_pl_tasks",[(_info_arr select 0)],false];_settask_arr call BIS_fnc_taskCreate;};

     };
