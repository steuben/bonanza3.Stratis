
// Configuration

opforCenter = createCenter EAST;


// Scripts

[] execVM "extras\debug.sqf";
[] execVM "extras\extrasInit.sqf";
[] execVM "objectives\objectivesInit.sqf";

		// Loadouts
		if (player == steuben) then
		{
			[] execVM "loadout\loadoutSteuben.sqf";
		};

		if (player == gnarfo) then 
		{
			[] execVM "loadout\loadoutGnarfo.sqf";
		};

		[] execVM "loadout\loadoutBoxes.sqf";
