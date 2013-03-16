

#include "assmanCommons.hpp"

// HEADLINE
 class titleHome : titleBarText
  {
	text = " BLUFOR ASSMAN";
  };

  
// SUBLINES

/*  
		class subtitleH1_support_artillery : subtitleH1
		  {
			text = "ARTILLERY SUPPORT";
			x = 0.415; y = 0.28;
			
		  };
*/


// BUTTONS


		//ARTY
		 class btn_reqFiremission:ButtonControlContentWide
		  {
			
			idc = -1;
			type = 1;
			
			x = 0.4;
			y = 0.28;
			
			text = "INDIRECT";
			action = "if (supportArtyBusy) exitWith {hint ""ASSET BUSEY""}; if (!supportArty) then {[0, player] execVM ""extras\supportSquad\arty.sqf""; assmanStart = false; closeDialog 0};   if (supportArty) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissArty""; };"	
		  };
  


		//FIXED WING
		 class btn_reqFixedwing:ButtonControlContentWide
		  {
			
			idc = -1;
			type = 1;
			
			x = 0.4;
			y = 0.36
			
			text = "FIXED WING";
			action = "if (supportFixedwingBusy) exitWith {hint ""ASSET BUSEY""}; if (!supportFixedwing) then {[0, player] execVM ""extras\supportSquad\fixedWing.sqf""; assmanStart = false; closeDialog 0};   if (supportFixedwing) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissFixedwing""; };"	
		  };
  


		//ROTARY WING
		 class btn_reqRotarywing:ButtonControlContentWide
		  {
			
			idc = -1;
			type = 1;
			
			x = 0.4;
			y = 0.44
			
			text = "ROTARY WING";
			action = "if (supportRotarywingBusy) exitWith {hint ""ASSET BUSEY""}; if (!supportRotarywing) then {[0, player] execVM ""extras\supportSquad\Rotarywing.sqf""; assmanStart = false; closeDialog 0};   if (supportRotarywing) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissRotarywing""; };"	
		  };
  


		//Create CCP
		 class btn_reqCCP:ButtonControlContentWide
		  {
			
			idc = -1;
			type = 1;
			
			x = 0.4;
			y = 0.52
			
			text = "CCP";
			action = "if (supportCCP) exitWith {hint ""ASSET BUSEY""}; if (!supportCCP) then {[0, player] execVM ""extras\supportSquad\CCP.sqf""; assmanStart = false; closeDialog 0};   if (supportCCP) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissCCP""; };"	
		  };
  
      


		//INFIL
		 class btn_reqINFIL:ButtonControlContentWide
		  {
			
			idc = -1;
			type = 1;
			
			x = 0.4;
			y = 0.60
			
			text = "INFIL";
			action = "if (supportInfil) exitWith {hint ""ASSET BUSEY""}; if (!supportInfil) then {[0, player] execVM ""extras\supportSquad\Infil.sqf""; assmanStart = false; closeDialog 0};   if (supportInfil) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissInfil""; };"	
		  };



		  
		//EXFIL
		 class btn_reqEXFIL:ButtonControlContentWide
		  {
			
			idc = -1;
			type = 1;
			
			x = 0.4;
			y = 0.68
			
			text = "EXFIL";
			action = "if (supportExfil) exitWith {hint ""ASSET BUSEY""}; if (!supportExfil) then {[0, player] execVM ""extras\supportSquad\Exfil.sqf""; assmanStart = false; closeDialog 0};   if (supportExfil) then { closeDialog 0; _ok = createDialog ""uiAssmanDismissExfil""; };"	
		  };
  
    
 