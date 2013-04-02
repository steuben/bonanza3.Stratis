

#include "forceControlCommons.hpp"

// HEADLINE
 class titleHome : titleBarText
  {
	text = "FORCE CONTROL";
  };

  
// BUTTONS


		// OBJECTIVE
		class btn_objective:ButtonControlContentWide
		  {
			
			idc = 200;
			type = 1;
			
			x = 0.4;
			y = 0.29;
			
			text = "GENERATE OBJECTIVE";
			action ="closeDialog 0; [] execVM ""objectives\objectivesInit.sqf"";";
			
		  };
		  
		  
		  
		// LOADOUT
		class btn_loadout:ButtonControlContentWide
		  {
			
			idc = 300;
			type = 1;
			
			x = 0.4;
			y = 0.37
			
			text = "LOADOUT";
			action = "closeDialog 0; _ok = createDialog ""uiForceControlLoadout""; [] execVM ""extras\forceControl\forceControlStateHandler.sqf"";"	
		  };
		  
		
		
		// TEAM
		class btn_team:ButtonControlContentWide
		  {
			
			idc = 400;
			type = 1;
			
			x = 0.4;
			y = 0.45;
			
			text = "TEAM";
			action ="closeDialog 0; _ok = createDialog ""uiForceControlTeam""; [] execVM ""extras\forceControl\forceControlStateHandler.sqf"";";
		  };
		

