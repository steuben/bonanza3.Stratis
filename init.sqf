

[] execVM "extras\extrasInit.sqf";

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

[] execVM "extras\debug.sqf";







