

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
			
			text = "OBJECTIVE";
			action ="";
			//action = "if (supportArtyBusy) exitWith {hint ""ASSET BUSEY""}; if (!supportArty) then {[0, player] execVM ""extras\assman\assets\arty\init.sqf""; assmanStart = false; closeDialog 0};   if (supportArty) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissArty""; };"	
		  };
		  
		  
		  
		// LOADOUT
		class btn_loadout:ButtonControlContentWide
		  {
			
			idc = 300;
			type = 1;
			
			x = 0.4;
			y = 0.37
			
			text = "LOADOUT";
			action ="";
			//action = "if (supportArtyBusy) exitWith {hint ""ASSET BUSEY""}; if (!supportArty) then {[0, player] execVM ""extras\assman\assets\arty\init.sqf""; assmanStart = false; closeDialog 0};   if (supportArty) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissArty""; };"	
		  };
		  
		
		
		// TEAM
		class btn_team:ButtonControlContentWide
		  {
			
			idc = 400;
			type = 1;
			
			x = 0.4;
			y = 0.45;
			
			text = "TEAM";
			action ="";
			//action = "if (supportArtyBusy) exitWith {hint ""ASSET BUSEY""}; if (!supportArty) then {[0, player] execVM ""extras\assman\assets\arty\init.sqf""; assmanStart = false; closeDialog 0};   if (supportArty) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissArty""; };"	
		  };
		

