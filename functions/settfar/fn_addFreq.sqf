if(!hasInterface)exitWith{};
#include "msot_components.hpp"
private ["_settingsSwWest","_settingsLRWest","_settingsSwEast","_settingsLREast","_settingsSwInd","_settingsLRInd","_activeLRRadios","_act_sets","_activeRadios"];

_settingsSwWest = ["461.0","118.6","170.4","227.2","284.0","340.8","397.6","454.4","511.2"];
_settingsLRWest = ["34.8","39.6","44.4","49.2","54.0","58.8","63.6","68.4","73.2"];
_settingsSwEast = ["461.0","119.7","171.5","228.3","285.1","341.9","398.7","455.5","510.1"];
_settingsLREast = ["35.9","40.7","45.5","50.3","55.1","59.9","64.7","69.5","74.3"];
_settingsSwInd = ["461.0","120.8","172.6","229.4","286.2","342.0","399.8","456.6","509.0"];
_settingsLRInd = ["34.0","41.8","46.6","51.4","56.2","60.0","65.8","70.6","75.4"];


_guerCode = if ([west, independent] call BIS_fnc_sideIsFriendly) then {"_bluefor"} else {"_guer"};
tf_freq_west = [0,7,_settingsSwWest,0,"_bluefor",-1,0,getplayerUID player,false];
tf_freq_west_lr = [0,7,_settingsLRWest,0,"_bluefor",-1,0,false];
tf_freq_east = [0,7,_settingsSwEast,0,"_opfor",-1,0,getplayerUID player,false];
tf_freq_east_lr = [0,7,_settingsLREast,0,"_opfor",-1,0,false];
tf_freq_guer = [0,7,_settingsSwInd,0,_guerCode,-1,0,getplayerUID player,false];
tf_freq_guer_lr = [0,7,_settingsLRInd,0,_guerCode,-1,0,false];


_act_sets = [];
_activeRadios = [] call TFAR_fnc_activeSwRadio;;
If(!isNil "_activeRadios")then
{
  _act_sets = switch(side player)do
              {
                case (WEST):{tf_freq_west};
                case (EAST):{tf_freq_east};
                case (INDEPENDENT):{tf_freq_guer};
                default {tf_freq_west};
              };
   If(count _act_sets > 0)then{[(call TFAR_fnc_activeSwRadio), _act_sets] call TFAR_fnc_setSwSettings;};
};

If(count (player call TFAR_fnc_lrRadiosList) > 0)then{
_activeLRRadios = [] call TFAR_fnc_activeLrRadio;
_act_sets = [];
If(!isNil "_activeLRRadios")then
{

  _act_sets = switch(side player)do
              {
                case (WEST):{tf_freq_west_lr};
                case (EAST):{tf_freq_east_lr};
                case (INDEPENDENT):{tf_freq_guer_lr};
                default {tf_freq_west_lr};
              };
   If(count _act_sets > 0)then{[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _act_sets] call TFAR_fnc_setLrSettings;};
};
};
