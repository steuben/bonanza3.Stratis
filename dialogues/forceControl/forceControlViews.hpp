
// FORCE CONTROL UI VIEWS



		// START VIEW

		class uiForceControlStart 
		{

		  idd = -1;
		  movingEnable = true;
		  
		  controlsBackground[] = {"bgShape","headlineBG","titleHome", "btn_close", "btn_objective", "btn_loadout", "btn_team"};
		  controls[] = {};
		  
		  objects[] = {};
		  
		  #include "startView.hpp"
		  
		};
		
		// LOADOUT MAIN MENU

		class uiForceControlLoadout
		{

		  idd = -1;
		  movingEnable = true;
		  
		  controlsBackground[] = {"bgShape","headlineBG","titleLoadoutMain", "btn_close", "btn_backToStart", "btn_saveLoadout", "btn_loadoutTemplates"};
		  controls[] = {};
		  
		  objects[] = {};
		  
		  #include "loadoutMainView.hpp"
		  
		};
		
		// TEAM MENU

				// TEAM MAIN VIEW

				class uiForceControlTeam
				{

				  idd = -1;
				  movingEnable = true;
				  
				  controlsBackground[] = {"bgShape4","headlineBG","titleTeamMain", "btn_close", "btn_backToStart", "btn_clearTeam", "btn_addInfantry", "btn_addVehicles"};
				  controls[] = {};
				  
				  objects[] = {};
				  
				  #include "teamMainView.hpp"
				  
				};

				// TEAM ADD INFANTRY MENU

				class uiForceControlTeamAddInfantry
				{

				  idd = -1;
				  movingEnable = true;
				  
				  controlsBackground[] = {"bgShapeLarge", "headlineBGWide", "btn_close_large" };
				  controls[] = {"titleTeamAddInfantry", "subRifleman","subGrenadier","btn_riflemanBasic","btn_riflemanAssault","btn_riflemanHeavy","btn_grenadierBasic","btn_grenadierAssault","btn_grenadierHeavy"};
				  
				  objects[] = {};
				  
				  #include "teamAddInfantryView.hpp"
				  
				};
		
