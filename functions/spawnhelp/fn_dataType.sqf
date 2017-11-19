#include "msot_components.hpp"
/* ----------------------------------------------------------------------------
Function: MSOT_spawnhelp_fnc_dataType

Description: Returns the data type of an expression.

Parameters: [_var_name]

Returns: String

Examples:

      _data_type = [_var_name] call MSOT_spawnhelp_fnc_dataType;

Author: Fry

---------------------------------------------------------------------------- */
private ["_output"];
params ["_data"];
_output = "";

_output = typeName _data;
_output
