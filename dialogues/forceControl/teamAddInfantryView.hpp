#include "forceControlCommons.hpp"

// HEADLINE
 class titleTeamAddInfantry : titleBarTextLarge
  {
	text = "TEAM: ADD INFANTRY";
  };

// TEAM CLASSES

    // RIFLEMAN

		  // SUBLINE

		  class subRifleman : subtitleH1 
		  {
			
			x = -0.23; y = 0.16;
			text = "RIFLEMAN";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_riflemanBasic : ButtonControlContentShort 
				{
					
					idc = 500;
								
					x = -0.225;
					y = 0.248;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_riflemanAssault : ButtonControlContentShort 
				{
					
					idc = 501;
								
					x = -0.225;
					y = 0.333;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//HEAVY
				class btn_riflemanHeavy : ButtonControlContentShort 
				{
					
					idc = 502;
								
					x = -0.225;
					y = 0.418;
					
					text = "HEAVY";
					action = ""
					
				};

	// GRENADIER

		  // SUBLINE

		  class subGrenadier : subtitleH1 
		  {
			
			x = 0.1; y = 0.16;
			text = "GRENADIER";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_grenadierBasic : ButtonControlContentShort 
				{
					
					idc = 503;
								
					x = 0.106;
					y = 0.248;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_grenadierAssault : ButtonControlContentShort 
				{
					
					idc = 504;
								
					x = 0.106;
					y = 0.333;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//HEAVY
				class btn_grenadierHeavy : ButtonControlContentShort 
				{
					
					idc = 505;
								
					x = 0.105;
					y = 0.418;
					
					text = "HEAVY";
					action = ""
					
				}; 