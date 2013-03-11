
// Config
opforCenter = createCenter EAST;

// Scripts
[] execVM "extras\extrasInit.sqf";
<<<<<<< HEAD
=======
<<<<<<< HEAD
//[] execVM "objectives\objectivesInit.sqf";
=======
>>>>>>> ADDED: Mission Generator Framework
>>>>>>> origin/wurst

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
[] execVM "loadout\loadoutVehicles.sqf";

[] execVM "extras\debug.sqf";
