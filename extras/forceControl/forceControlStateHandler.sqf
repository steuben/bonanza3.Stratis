sleep 0.07;

// BUTTON STATES 

		// OBJECTIVE
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
		
			// SAVE LOADOUT
			ctrlEnable [301, true];
			
			// LOADOUT TEMPLATES
			ctrlEnable [302, false];
		
		// TEAM
		ctrlEnable [400, false];

