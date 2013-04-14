
// CLEAR TEAM: All teammembers / entities in team-arrays are deleted

if (player == steuben) then 
	{
		[gnrf_team_steuben] call CBA_fnc_deleteEntity;
		gnrf_team_steuben = [];
	};


if (player == gnarfo) then 
	{
		[gnrf_team_gnarfo] call CBA_fnc_deleteEntity;
		gnrf_team_gnarfo = [];
	};

