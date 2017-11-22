#include "msot_components.hpp"
//this in every Mission
//**************************************************************************************************************************************************
waitUntil{!isNil "bis_fnc_init"};
FRY_INIT = false;

If(!hasInterface)then {FRY_INIT = true;} else { If(isNull player)then{[] spawn {waitUntil {!isNull player && player == player}; FRY_INIT = true;};}else{FRY_INIT = true;};};
waitUntil {FRY_INIT};

diag_log "INIT BEGINNT";



enableSentences false;
//***************************************************************************************************************************************************
If(isServer)then
{
	[[WING1,WING2,STOMP1,STOMP2,HELI1,HELI2,HELI3,HELI4],230] call MFUNC(usage,addRespawnVecs);
};
If(hasInterface)then
{
	setViewDistance 4000;
	player disableConversation true;
};
init_run = true;
diag_log format ["INIT IST DURCHGELAUFEN: %1",init_run];
