

#include "forceControlCommons.hpp"

// HEADLINE
 class titleLoadoutMain : titleBarText
  {
	text = "LOADOUT MENU";
  };

  
// BUTTONS

		  
		  
		  
		// SAVE LOADOUT
		class btn_saveLoadout:ButtonControlContentWide
		  {
			
			idc = 301;
			type = 1;
			
			x = 0.4;
			y = 0.37;
			
			text = "SAVE LOADOUT";
			action ="[0, player] execVM ""loadout\saveLoadout.sqf"";";
		  };
		  
		  
		  
		// LOADOUT TEMPLATES
		class btn_loadoutTemplates:ButtonControlContentWide
		  {
			
			idc = 302;
			type = 1;
			
			x = 0.4;
			y = 0.45
			
			text = "LOADOUT TEMPLATES";
			action ="";
			//action = "closeDialog 0; _ok = createDialog ""uiForceControlLoadout"";"	
		  };
		  
		
