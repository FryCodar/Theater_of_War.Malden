If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "msot_components.hpp"



- Suche Zielort
- Kreire Marker und speicher Ihn ["MAINMARKER",PositionZiel,[Markername,SCRIPTWHENALLTARGETSDOWN] spawn MSOT_system_fnc_addMissionInfos;                          X
- Erzeuge Ziel (mit AddAction zbsp) und speichere Ihn in ["MAINTARGETS",PositionZiel,[ZIELOBJECT,Markername,SCRIPT]] spawn MSOT_system_fnc_addMissionInfos;       X
                                                         ["MAINACTIONS",[ZIELOBJECT,STATUS,SCRIPTNACHAUSLÖSEN,BOOLDELETE]] spawn MSOT_system_fnc_addMissionInfos; X
                                                         ["ACTIONSTORAGE",[ZIELOBJECT,ACTIONTYPE,COLOR,TXT]] spawn MSOT_system_fnc_addMissionInfos;

- Erzeuge Trigger und speichere Sie in ["MAINTRIGGER",PositionZiel,[TRIGGERNAME,DOSCRIPT,NUMBERIDX]] spawn MSOT_system_fnc_addMissionInfos;

- kreire RespawnPosition und speichere Sie in ["RESPAWNPOSES",PositionZiel,PositionRespawn] spawn MSOT_system_fnc_addMissionInfos;                                X

!!!! (WICHTIG INDEX 3 ist für AUSLÖSEN von SCRIPTEN BEIM MAINTARGET ABGLEICH RESERVIERT)!!!

1 - Aufbau der Mission mit Zielen
2 - Was soll passieren, nach dem die hälfte der Feinde getötet wurden/oder andere Eigenschaften durch Trigger ausgelöst(TriggerName veranlassen-["MAINTRIGGER",TRIGGERNAME,INDEX])
3 - Informationen, wenn Ziele zerstört wurden (STRING ist STATE -"SUCCESS"/"FAILED")
4 - Was soll nach Beendigung aller Maintargets passieren (STRING ist STATE -"SUCCESS"/"FAILED")
5 - Nachbereitung der Mission (TriggerName-löschen veranlassen - ["MAINTRIGGER",TRIGGERNAME,INDEX])



/*
event_explosiv_fnc = {
                        private ["_expl_obj","_hit_part","_damage","_unit","_ammo_type","_info_idx","_expl","_c4_types","_params_setting",
						         "_hit_arr","_new_arr"];
						_expl_obj = _this select 0;
						_hit_part = _this select 1;
						_damage = _this select 2;
						_unit = _this select 3;
						_ammo_type = _this select 4;
						_info_idx = _this select 5;
						_hit_arr = [];
						_new_arr = [];

						If(isServer)then
						{
						  switch(PARAMS_c4only)do
							  {
							    case 0:{
										 If(damage _expl_obj < 0.98)then
										 {
										   switch(true)do
										   {
										     case (_hit_part == "" || _hit_part == "?"):{If(_damage > 0)then{_expl_obj setDamage ((damage _expl_obj) + _damage);};};
										     case (_hit_part != "" && _hit_part != "?"):{If(_damage > 0)then{_expl_obj setHit [_hit_part,((_expl_obj getHit _hit_part) + _damage)];};};
										   };
										 };
										 If(damage _expl_obj > 0.97)then
										 {
										   {
										     If((_x select 0) == _expl_obj && (_x select 1) == "EXPLOSIV")then
											 {
											  _hit_arr pushBack _x;
											 }else{
											        _new_arr pushBack _x;
											      };
										   }forEach (FRY_COM_LOGIC getVariable "event_store");
										   If(count _hit_arr > 0)then
										   {
										     {_expl_obj removeEventHandler ["handledamage", (_x select 2)];}forEach _hit_arr;
										   };
									       FRY_COM_LOGIC setVariable ["event_store",_new_arr,true];
										   sleep (5 + (random 10));
										   [(format ["%1",_expl_obj]),_info_idx] spawn mission_target_chk;
										 };
                                       };
                                case 1:{
                                          If(_ammo_type In C4_CLASSES || _ammo_type == "FuelExplosionBig")then
										  {
						                    If(damage _expl_obj < 0.98)then
											{
										      switch(true)do
											  {
											    case (_hit_part == "" || _hit_part == "?"):{If(_damage > 0)then{_expl_obj setDamage ((damage _expl_obj) + _damage);};};
											    case (_hit_part != "" && _hit_part != "?"):{If(_damage > 0)then{_expl_obj setHit [_hit_part,((_expl_obj getHit _hit_part) + _damage)];};};
											  };
											};
											// If(damage _expl_obj > 0.7)then{_ammo = createVehicle ["HelicopterExploSmall",(position _expl_obj), [], 0, "NONE"];};
										    If(damage _expl_obj > 0.97)then
											{
											   {
										       If((_x select 0) == _expl_obj && (_x select 1) == "EXPLOSIV")then
											   {
											    _hit_arr pushBack _x;
											   }else{
											          _new_arr pushBack _x;
											        };
										     }forEach (FRY_COM_LOGIC getVariable "event_store");
										     If(count _hit_arr > 0)then
										     {
										      {_expl_obj removeEventHandler ["handledamage", (_x select 2)];}forEach _hit_arr;
										     };
									         FRY_COM_LOGIC setVariable ["event_store",_new_arr,true];
											 sleep (5 + (random 10));
										     [(format ["%1",_expl_obj]),_info_idx] spawn mission_target_chk;
											};
                                          };
                                       };
							   };

						}else{
						        _c4_types = (FRY_COM_LOGIC getVariable "c4_class_names");
								_params_setting = ("c4only" call BIS_fnc_getParamValue);

						        switch(_params_setting)do
							    {
								  case 0:{
								           If(damage _expl_obj < 0.98)then
										   {
										     switch(true)do
										     {
										       case (_hit_part == "" || _hit_part == "?"):{If(_damage > 0)then{_expl_obj setDamage ((damage _expl_obj) + _damage);};};
										       case (_hit_part != "" && _hit_part != "?"):{If(_damage > 0)then{_expl_obj setHit [_hit_part,((_expl_obj getHit _hit_part) + _damage)];};};
										     };
										   };
										   If(damage _expl_obj > 0.97)then
										   {
										     {
										     If((_x select 0) == _expl_obj && (_x select 1) == "EXPLOSIV")then
											 {
											  _hit_arr pushBack _x;
											 }else{
											        _new_arr pushBack _x;
											      };
										     }forEach (FRY_COM_LOGIC getVariable "event_store");
										     If(count _hit_arr > 0)then
										     {
										       {_expl_obj removeEventHandler ["handledamage", (_x select 2)];}forEach _hit_arr;
										     };
									         FRY_COM_LOGIC setVariable ["event_store",_new_arr,true];
										     sleep (5 + (random 10));
								             PV_event_killed = [(format ["%1",_expl_obj]),_info_idx];
					                         publicVariable "PV_event_killed";
								           };
								         };
								  case 1:{
								           If(_ammo_type In C4_CLASSES || _ammo_type == "FuelExplosionBig")then
										   {
										    If(damage _expl_obj < 0.98)then
											{
										      switch(true)do
											  {
											    case (_hit_part == "" || _hit_part == "?"):{If(_damage > 0)then{_expl_obj setDamage ((damage _expl_obj) + _damage);};};
											    case (_hit_part != "" && _hit_part != "?"):{If(_damage > 0)then{_expl_obj setHit [_hit_part,((_expl_obj getHit _hit_part) + _damage)];};};
											  };
											};
											//If(damage _expl_obj > 0.7)then{_ammo = createVehicle ["HelicopterExploSmall",(position _expl_obj), [], 0, "NONE"];};
											If(damage _expl_obj > 0.97)then
											{
											 {
										     If((_x select 0) == _expl_obj && (_x select 1) == "EXPLOSIV")then
											 {
											  _hit_arr pushBack _x;
											 }else{
											        _new_arr pushBack _x;
											      };
										     }forEach (FRY_COM_LOGIC getVariable "event_store");
										     If(count _hit_arr > 0)then
										     {
										       {_expl_obj removeEventHandler ["handledamage", (_x select 2)];}forEach _hit_arr;
										     };
									         FRY_COM_LOGIC setVariable ["event_store",_new_arr,true];

											 sleep (5 + (random 10));
										     [(format ["%1",_expl_obj]),_info_idx] call mission_target_chk;
											};
								           };
								         };
								};
						     };

						    If(DEBUG)then
							{
							  hint format ["%1\n\n%2\n\n%3",damage _expl_obj,_ammo_type,_info_idx];
							  diag_log format ["Dam: %1,%2,%3",damage _expl_obj,_ammo_type,_info_idx];
							};
                     };


//**************************************************************************************************************************************************************************************
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};
//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["FxCartridge_65_caseless","26_taser_bullet","26_cartridge_mag","","B_9x21_Ball","B_556x45_dual"] && _curWep in ["Taser_26","hgun_Rook40_snds_F","arifle_SDAR_F"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {50};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};

				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};

			if(playerSide == independent && side _source == independent) then {
				_damage = false;
			};
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};
*/
