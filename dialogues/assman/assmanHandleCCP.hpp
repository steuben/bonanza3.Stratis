

#include "assmanCommons.hpp"
 
// HEADLINE 
 
class titleHandleCCP:titleBarText
  {
	text = " SETUP CCP";
  };
 

// BUTTONS
 
 class btn_deployCCP:ButtonControlContentWide 
  {
    
	idc = 40;
    type = 1;
	
    x = 0.4;
    y = 0.37;
	
    sizeEx = 0.054;
			
	text = "DEPLOY CCP";
	action = "[] spawn gnrf_fnc_deployCCP; closeDialog 0;"	
  };

 class btn_deconstructCCP:ButtonControlContentWide 
  {
    
	  idc = 41;
    type = 1;
	
    x = 0.4;
    y = 0.45;
	
    sizeEx = 0.054;
			
	text = "DECONSTRUCT CCP";
	action = "[] spawn gnrf_fnc_deconstructCCP; closeDialog 0;"	
  };