If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "msot_components.hpp"

private ["_add_arr","_save_arr","_x","_vec","_type","_pos_asl","_dir","_set_in"];

params ["_vecs_arr","_resp_time"];

_add_arr = [];
_save_arr = [];
If(typeName _vecs_arr isEqualTo "ARRAY" && {count _vecs_arr > 0})then
{
  If(count (missionNamespace getVariable [STRVAR_DO(resp_store),[]]) > 0)then
  {
    _save_arr = missionNamespace getVariable STRVAR_DO(resp_store);
    {
      _vec = _x;
      _type = typeOf _vec;
      _pos_asl = GET_POSATL(_vec);
      _dir = GET_DIR(_vec);
      _set_in = [_vec,_type,_pos_asl,_dir,_resp_time];
      ARR_ADDVAR(_add_arr,_set_in);
      _vec addEventHandler ["Killed",{[_this select 0] spawn MFUNC(system,setRespawnVecs);}];
    }forEach _vecs_arr;
    ARR_ADDARR(_save_arr,_add_arr);
    missionNamespace setVariable [STRVAR_DO(resp_store),_save_arr,false];
  }else{
         {
           _vec = _x;
           _type = typeOf _vec;
           _pos_asl = GET_POSATL(_vec);
           _dir = GET_DIR(_vec);
           _set_in = [_vec,_type,_pos_asl,_dir,_resp_time];
           ARR_ADDVAR(_add_arr,_set_in);
           _vec addEventHandler ["Killed",{[_this select 0] spawn MFUNC(system,setRespawnVecs);}];
         }forEach _vecs_arr;
         missionNamespace setVariable [STRVAR_DO(resp_store),_add_arr,false];
       };
};
