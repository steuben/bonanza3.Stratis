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
					action = "[] execVM ""extras\forceControl\addInfantry\addRiflemanBasic.sqf"";"
					
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
			
			x = 0.049; y = 0.16;
			text = "GRENADIER";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_grenadierBasic : ButtonControlContentShort 
				{
					
					idc = 503;
								
					x = 0.055;
					y = 0.248;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_grenadierAssault : ButtonControlContentShort 
				{
					
					idc = 504;
								
					x = 0.055;
					y = 0.333;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//HEAVY
				class btn_grenadierHeavy : ButtonControlContentShort 
				{
					
					idc = 505;
								
					x = 0.055;
					y = 0.418;
					
					text = "HEAVY";
					action = ""
					
				}; 



	// AT SPECIALIST

		  // SUBLINE

		  class subAT : subtitleH1 
		  {
			
			x = 0.329; y = 0.16;
			text = "AT SPECIALIST";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_atBasic : ButtonControlContentShort 
				{
					
					idc = 506;
								
					x = 0.335;
					y = 0.248;
					
					text = "BASIC";
					action = ""
					
				};

				//HEAVY
				class btn_atHeavy : ButtonControlContentShort 
				{
					
					idc = 507;
								
					x = 0.335;
					y = 0.333;
					
					text = "HEAVY";
					action = ""
					
				}; 

				//GUIDED
				class btn_atGuided : ButtonControlContentShort 
				{
					
					idc = 508;
								
					x = 0.335;
					y = 0.418;
					
					text = "GUIDED";
					action = ""
					
				};




	// MARKSMAN

		  // SUBLINE

		  class subMarksman : subtitleH1 
		  {
			
			x = 0.609; y = 0.16;
			text = "MARKSMAN";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_marksmanBasic : ButtonControlContentShort 
				{
					
					idc = 509;
								
					x = 0.615;
					y = 0.248;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_marksmanAssault : ButtonControlContentShort 
				{
					
					idc = 510;
								
					x = 0.615;
					y = 0.333;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//LONG RANGE
				class btn_marksmanLongrange : ButtonControlContentShort 
				{
					
					idc = 511;
								
					x = 0.615;
					y = 0.418;
					
					text = "LONG RANGE";
					action = ""
					
				};




	// MACHINEGUNNER

		  // SUBLINE

		  class subMGunner : subtitleH1 
		  {
			
			x = 0.889; y = 0.16;
			text = "MACHINEGUNNER";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_mgunnerBasic : ButtonControlContentShort 
				{
					
					idc = 512;
								
					x = 0.895;
					y = 0.248;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_mgunnerAssault : ButtonControlContentShort 
				{
					
					idc = 513;
								
					x = 0.895;
					y = 0.333;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//HEAVY
				class btn_mgunnerHeavy : ButtonControlContentShort 
				{
					
					idc = 514;
								
					x = 0.895;
					y = 0.418;
					
					text = "HEAVY";
					action = ""
					
				};



    // COMBAT MEDIC

		  // SUBLINE

		  class subMedic : subtitleH1 
		  {
			
			x = -0.23; y = 0.56;
			text = "COMBAT MEDIC";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_medicBasic : ButtonControlContentShort 
				{
					
					idc = 515;
								
					x = -0.225;
					y = 0.648;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_medicAssault : ButtonControlContentShort 
				{
					
					idc = 516;
								
					x = -0.225;
					y = 0.733;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//HEAVY
				class btn_medicSpecialist : ButtonControlContentShort 
				{
					
					idc = 517;
								
					x = -0.225;
					y = 0.818;
					
					text = "SPECIALIST";
					action = ""
					
				};



    // COMBAT ENGINEER

		  // SUBLINE

		  class subEngineer : subtitleH1 
		  {
			
			x = 0.049; y = 0.56;
			text = "COMBAT ENGINEER";

		  };

		  // BUTTONS

		  		//BASIC
				class btn_engineerBasic : ButtonControlContentShort 
				{
					
					idc = 518;
								
					x = 0.055;
					y = 0.648;
					
					text = "BASIC";
					action = ""
					
				};

				//ASSAULT
				class btn_engineerAssault : ButtonControlContentShort 
				{
					
					idc = 519;
								
					x = 0.055;
					y = 0.733;
					
					text = "ASSAULT";
					action = ""
					
				}; 

				//HEAVY
				class btn_engineerSpecialist : ButtonControlContentShort 
				{
					
					idc = 520;
								
					x = 0.055;
					y = 0.818;
					
					text = "SPECIALIST";
					action = ""
					
				};


