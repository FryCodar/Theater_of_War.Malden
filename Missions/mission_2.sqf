If(isMultiplayer)then{If(!isServer)exitWith{};};

#include "..\msot_macros.hpp"

private ["_main_pos","_main_radius","_towns","_target","_base","_bag","_force_calc","_xtra_pos","_triggername","_script"];
params ["_idx"];

hint "running mission 2";
switch(_idx)do
{
  case 0:{
            _main_pos = [6788,16400.9,0];
            _main_radius = 3200;
            _towns = ([_main_pos,0,_main_radius,12] call MFUNC(spawnhelp,getMapLocations)) call BFUNC(arrayShuffle);
            If(count _towns > 0)then
            {
              _target = selectRandom _towns;
              MSOT_MIS_POS = (_target select 1);
              MSOT_MIS_SIZE = (_target select 2);
              _marker = [MSOT_MIS_POS,(_target select 0),"ELLIPSE",[MSOT_MIS_SIZE,MSOT_MIS_SIZE]] call MFUNC(usage,setMapMarker);
              hint str _marker;
            };

         };
}
