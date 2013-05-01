
[0, 
{
	deleteVehicle gnrf_ccpObj;
	gnrf_ccpObj = nil;
	gnrf_respawnInfo set [gnrf_ccpRespawnArrayIndex, -1];
	gnrf_respawnInfo = gnrf_respawnInfo - [-1];
	gnrf_ccpRespawnArrayIndex = nil;
	publicVariable "gnrf_ccpObj";
	publicVariable "gnrf_respawnInfo";

}] call CBA_fnc_globalExecute;
	
