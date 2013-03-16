
if (supportRotarywing) then
{
		_dude =_this select 1;
		_dude sideChat "LONGSWORD, this is BONANZA. Requesting CAS, Rotary. How copy?";
		sleep 2;
		commanderReich sideChat "Negative, BONANZA. Manatee already deployed. LONGSWORD out.";
		
};

if (!supportRotarywing) then 
{
		supportRotarywingBusy = true;
		publicVariable "supportRotarywingBusy";
		
		rotarywingRemove = false;
		publicVariable "rotarywingRemove";
		
		_dude =_this select 1;
		_dude sideChat "LONGSWORD, this is BONANZA. Requesting CAS, Rotary. How copy?";
		
		// CAS TEAM SPAWNEN
		
			// CAS Asset
			manatee="B_AH9_F" createVehicle [3274.57,5780.01,5.35229];
			
			
					
		teamRotarywing1 = Creategroup WEST;
		"B_Helipilot_F" createUnit [[3274.57,5780.01,5.35229], teamRotarywing1, "manatee1=this", 1, ""];
		manatee1 moveInDriver manatee;
		
		/*sleep 3;
		
		"B_Helipilot_F" createUnit [[3274.57,5780.01,5.35229], teamRotarywing1, "manatee2=this", 1, ""];
		manatee2 moveInCargo manatee;
		*/
		commanderReich sideChat "Solid Copy, BONANZA. Stand by.";
		
		sleep 6;
		
		//waitUntil {(vehicle manatee1 != manatee1) AND (vehicle manatee2 != manatee2)};	
		waitUntil {(vehicle manatee1 != manatee1)};		
		
		
		//[manatee1, manatee2] joinSilent group _dude;
		[manatee1] joinSilent group _dude;
		commanderReich sideChat "BONANZA, I have patched you through. MANATEE is all yours now.";
		sleep 2;
		_dude sideChat "Roger, LONGSWORD. BONANZA out.";
				
		supportRotarywing = true;
		publicVariable "supportRotarywing";
		
		supportRotarywingBusy = false;
		publicVariable "supportRotarywingBusy";
		
		
		
		// Check Manatee's Status, remove & reset if dead or kapott.
		
		while 
		{
			true
		} 
		
		do
		{			
			
			if (rotarywingRemove) exitWith { };
			
			if ((getDammage manatee >= 0.3)  OR (!alive manatee1)) exitWith 
			{
					_dude sideChat "LONGSWORD, this is BONANZA. Be advised, Manatee is down. I say again, Manatee is down! ";
					
					sleep 3;
					commanderReich sideChat "BONANZA, this is LONGSWORD actual. Any chance the pilots made it out alive? Over.";
					sleep 7;
					
					deleteVehicle manatee1;
					//deleteVehicle manatee2; 
					deleteVehicle manatee; 
					
					sleep 3;
					_dude sideChat "Pretty much zero, LONGSWORD. BONANZA out.";
			};
			
			sleep 35;
		};
		
		
		
		
};