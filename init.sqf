
// Config
opforCenter = createCenter EAST;

// Scripts
[] execVM "extras\extrasInit.sqf";

//[] execVM "objectives\objectivesInit.sqf";

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

//global variables
gnrf_opforSkill = 0.5;



