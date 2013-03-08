hint "eventhandlers";

//player respawn
player addEventHandler ["killed", 
{ 
	[] spawn {		
		player setVariable ["deathPos", getPos player];
		waitUntil {alive player}; 
		[] spawn gnrf_playerRespawn_fnc;			
	};	
}];

