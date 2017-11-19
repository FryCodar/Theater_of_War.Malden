#include "msot_components.hpp"
/* -----------------------------------------------------------------------------------------------
Function: MSOT_usage_fnc_checkNight

Description: Check for Night.

Parameters:


Returns: BOOL

Examples:
          _isnight = call MSOT_usage_fnc_checkNight;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output"];

_output = false;

If(sunOrMoon <= 0.4)then{_output = true;};
_output
//�NDERN FALSCHE ANGABEN
