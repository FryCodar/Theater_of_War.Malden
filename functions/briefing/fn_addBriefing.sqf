If(!hasInterface) exitWith {};
#include "msot_components.hpp"
#include "..\msot_briefing.hpp"


If!(_briefing_text_situation isEqualTo "")then
{
  player createDiaryRecord ["Diary", [(localize "STR_BRIEFTAG_SITUATION"), _briefing_text_situation]];
};
If!(_briefing_text_order isEqualTo "")then
{
  player createDiaryRecord ["Diary", [(localize "STR_BRIEFTAG_ORDER"), _briefing_text_order]];
};
If!(_briefing_text_execution isEqualTo "")then
{
  player createDiaryRecord ["Diary", [(localize "STR_BRIEFTAG_EXECUTION"), _briefing_text_execution]];
};
If!(_briefing_text_support isEqualTo "")then
{
  player createDiaryRecord ["Diary", [(localize "STR_BRIEFTAG_SUPPORT"), _briefing_text_support]];
};
