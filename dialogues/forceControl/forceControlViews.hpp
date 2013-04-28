
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
				  controls[] = {"titleTeamAddInfantry", "subRifleman","subGrenadier","subAT","subMarksman","subMGunner","subMedic","subEngineer","btn_riflemanBasic","btn_riflemanAssault","btn_riflemanHeavy","btn_grenadierBasic","btn_grenadierAssault","btn_grenadierHeavy","btn_atBasic","btn_atHeavy","btn_atGuided","btn_marksmanBasic","btn_marksmanAssault","btn_marksmanLongrange","btn_mgunnerBasic","btn_mgunnerAssault","btn_mgunnerHeavy","btn_medicBasic","btn_medicAssault","btn_medicSpecialist","btn_engineerBasic","btn_engineerAssault","btn_engineerSpecialist"};
				  
				  objects[] = {};
				  
				  #include "teamAddInfantryView.hpp"
				  
				};
		
