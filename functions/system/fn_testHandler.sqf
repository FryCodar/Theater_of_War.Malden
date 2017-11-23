#include "msot_components.hpp"
private ["_counter"];

If(count (missionNamespace getVariable [STRVAR_DO(holder_manage_mission),[]]) > 0)then
{
  {
    hintSilent format["%1\n\n%2",_x,(missionNamespace getVariable [STRVAR_DO(holder_manage_mission),[]])];
    sleep 2;
  }forEach (missionNamespace getVariable [STRVAR_DO(holder_manage_mission),[]]);
};
