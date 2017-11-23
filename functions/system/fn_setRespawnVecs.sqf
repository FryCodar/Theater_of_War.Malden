#include "msot_components.hpp"
/* --------------------------------------------------------------------------------------------------------------


Description: DONT TOUCH AND USE THIS FUNCTION - VEHCILE RESPAWN FUNCTION


Author: Fry

----------------------------------------------------------------------------------------------------------------- */




private ["_found","_idx","_work_arr","_work_part","_vec_type","_vec_pos","_vec_dir","_vec_time","_new_vec"];
params ["_vec_name"];

If(isServer)then
{
  If(count (missionNamespace getVariable [STRVAR_DO(resp_store),[]]) > 0)then
  {
    _found = false;
    _idx = -1;
    _work_arr = missionNamespace getVariable STRVAR_DO(resp_store);
    {if((_x select 0) isEqualTo _vec_name)then{_idx = _forEachIndex;_found = true;};}forEach _work_arr;
    If(_found)then
    {
      _work_part = _work_arr select _idx;_vec_type = _work_part select 1;_vec_pos = _work_part select 2;_vec_dir = _work_part select 3;
      _vec_time = _work_part select 4;
      sleep _vec_time;
      deleteVehicle _vec_name;
      sleep 2;
      _new_vec = createVehicle [_vec_type,_vec_pos,[], 0, "CAN_COLLIDE"];
      SET_POSATL(_new_vec,_vec_pos,0.1); SET_DIR(_new_vec,_vec_dir);
      _new_vec addEventHandler ["Killed",{[_this select 0] spawn MFUNC(system,setRespawnVecs);}];
      If((getText(configfile >> "CfgVehicles" >> _vec_type >> "vehicleClass")) isEqualTo "Autonomous")then
      {createVehicleCrew _new_vec;};
      _work_part set [0,_new_vec];_work_arr set [_idx,_work_part];
      missionNamespace setVariable [STRVAR_DO(resp_store),_work_arr,false];
    };
  };
};
If(!isMultiplayer)exitWith{};
If(hasInterface)then{
  REMOTE_TRIEXESM(_this,system,setRespawnVecs,2);
};
