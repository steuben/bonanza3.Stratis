sleep 0.02;

// BUTTON STATES 

		// OBJECTIVE, disabled when objective is assigned
		if (!objectiveAssigned) then 
		{
			ctrlEnable [200, true];
		};
		if (objectiveAssigned) then 
		{
			ctrlEnable [200, false];
		};
		
		// LOADOUT
		ctrlEnable [300, true];
		
			// SAVE LOADOUT, always enabled
			ctrlEnable [301, true];
			
			// LOADOUT TEMPLATES, only enabled in base
			ctrlEnable [302, false];
		
		// TEAM, only enabled in base
		if (player distance commanderReich < 50) then
		{ 
			ctrlEnable [400, enable];
		};
		if (player distance commanderReich > 50) then
		{ 
			ctrlEnable [400, false];
		};
		
			// CLEAR TEAM
			ctrlEnable [401, true];
			
			// ADD INFANTRY
			ctrlEnable [402, true];
			
			// ADD VEHICLES
			ctrlEnable [403, false];

