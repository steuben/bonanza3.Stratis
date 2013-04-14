

#include "forceControlCommons.hpp"

// HEADLINE
 class titleTeamMain : titleBarText
  {
	text = "TEAM MENU";
  };

  
// BUTTONS

		  
		  
		  
		// DISMISS TEAM
		class btn_clearTeam:ButtonControlContentWide
		  {
			
			idc = 401;
			type = 1;
			
			x = 0.4;
			y = 0.37;
			
			text = "DISMISS TEAM";
			action ="[] execVM ""extras\forceControl\clearTeam.sqf"";";
		  };
		  
		  
		  
		// ADD INFANTRY
		class btn_addInfantry:ButtonControlContentWide
		  {
			
			idc = 402;
			type = 1;
			
			x = 0.4;
			y = 0.45;
			
			text = "ADD INFANTRY";
			action ="[] execVM ""extras\forceControl\addInfantry\addRifleman.sqf"";";
		  };
		  
		  
		// ADD VEHICLES
		class btn_addVehicles:ButtonControlContentWide
		  {
			
			idc = 403;
			type = 1;
			
			x = 0.4;
			y = 0.53
			
			text = "ADD VEHICLES";
			action ="";
		  };
		  
		
