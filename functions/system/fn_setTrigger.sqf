If(isMultiplayer)then{if(hasInterface)exitWith{};};
#include "msot_components.hpp"
/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_system_fnc_setTrigger

Description: Set a defined Trigger on Map

Parameters: [OBJECT,CALLER,ID,ARGUMENTS]


Returns: Nothing

Examples:
          _this spawn MSOT_system_fnc_setTrigger

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_trigger_name"];
params ["_idx","_pos","_size"];

_trigger_name = createTrigger ["EmptyDetector",_pos,false];
_trigger_name setTriggerArea [_size, _size, 0, false];
switch(_idx)do
{
 "ACTIVATE":{
              _trigger_name setTriggerActivation [MSOT_FRLYTR_SIDE, "PRESENT", false];
              _trigger_name setTriggerStatements ["this", "nul = ['MAINTRIGGER',thisTrigger] spawn MSOT_system_fnc_doMissionCheck",""];
            };
 "LEAVE":{
            _trigger_name setTriggerActivation [MSOT_FRLYTR_SIDE, "NOT PRESENT", false];
            _trigger_name setTriggerStatements ["this", "nul = ['MAINTRIGGER',thisTrigger] spawn MSOT_system_fnc_doMissionCheck",""];
         };
 "DETECTED":{
              _trigger_name setTriggerActivation [MSOT_FRLYTR_SIDE, (MSOT_EMYTR_SIDE + " D"), false];
              _trigger_name setTriggerStatements ["this", "nul = ['MAINTRIGGER',thisTrigger] spawn MSOT_system_fnc_doMissionCheck",""];
            };
 ""

};



































add_work_trigger = {
                           private ["_detect_pos","_detect_size","_detect_idx","_detect_trigger"];
					       _detect_pos = _this select 0;
					       _detect_size = _this select 1;
						   _detect_idx = _this select 2;

                           _detect_trigger  = createTrigger["EmptyDetector",_detect_pos,false];
                           _detect_trigger setTriggerArea[_detect_size,_detect_size,0,false];

						   switch(_detect_idx)do
						   {
                             case 0:{
							         _detect_trigger setTriggerActivation[(format ["%1",OWN_TRIGGER_SIDE]),"PRESENT",false];
							         _detect_trigger setTriggerStatements["this", "nul = [thisTrigger,thislist,0] spawn do_action",""];
									};
							 case 1:{
							         _detect_trigger setTriggerActivation[(format ["%1",OWN_TRIGGER_SIDE]),(format ["%1 D",ENEMY_TRIGGER_SIDE]),false];
							         _detect_trigger setTriggerStatements["this", "nul = [thisTrigger,thislist,1] spawn do_action",""];
									};
						   };
                    };
