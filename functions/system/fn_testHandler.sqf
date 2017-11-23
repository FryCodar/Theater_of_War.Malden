#include "msot_components.hpp"
private ["_counter"];

If(count TEST_ARR > 0)then
{
  {
    hintSilent format["%1\n\n%2",_x,TEST_ARR];
    sleep 2;
  }forEach TEST_ARR;
};
