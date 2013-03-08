//////client//////
if (!isDedicated) then 
{

	////// client functions precompiled
	gnrf_playerRespawn_fnc = compile preProcessFileLineNumbers "client\functions\respawn.sqf";
	
	////// Scripts
	[] execVM "client\eventHandlers.sqf";
	
};
	
//define respawn position(s)	
//add respawn pos - players always spawn at the nearest spawnpos. parameters:
//[[position] OR global object name for dynamic position, offset (radius in m, 0 for exact positioning)] 	
gnrf_respawnInfo = [];
gnrf_respawnInfo set [0, [hunter, 10], [atv1, 10],[atv2, 10]]; 
