If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "msot_components.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_system_fnc_manageMissionCheck

Description: Stores Units/Vehicles etc in System.

Parameters: [INDEX,POSITION/OBJECT,STRING/NUMBER]

            INDEX             -    "MAINTARGETS","RESPAWNPOSES","MAINTRIGGER"
            POSITION/OBJECT   -     OBJECT at "MAINTARGETS" & "MAINTRIGGER" / POSITION at "RESPAWNPOSES"
            STRING/NUMBER     -     STRING at "MAINTARGETS" / NUMBER at "MAINTRIGGER"

Returns: Nothing

Examples:
            _isStored = [] spawn MSOT_system_fnc_manageMissionCheck

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
