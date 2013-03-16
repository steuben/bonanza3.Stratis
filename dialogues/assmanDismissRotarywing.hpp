

#include "assmanCommons.hpp"
 
// HEADLINE 
 
class titleDismissRotarywing : titleBarText
  {
	text = " ROTARY WING";
  };
 

// BUTTONS
 
 class btn_dismissRotarywing:ButtonControlContentWide 
  {
    
	idc = -1;
    type = 1;
	
    x = 0.4;
    y = 0.37;
	
	font = "EtelkaMonospaceProBold";
    sizeEx = 0.054;
			
	text = "DISMISS";
	action = "[0, player] execVM ""extras\assman\assets\rotaryWing\clear.sqf""; closeDialog 0; [] execVM ""extras\assman\assmanStateHandler.sqf""; _ok = createDialog ""uiAssmanStart"";"	
  };