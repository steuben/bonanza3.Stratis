
	deleteVehicle gnrf_ccpObj;
	gnrf_ccpObj = nil;
	gnrf_respawnInfo set [count gnrf_respawnInfo, [gnrf_ccpObj, 5]];
	gnrf_respawnInfo set [gnrf_ccpRespawnArrayIndex, -1];
	gnrf_respawnInfo = gnrf_respawnInfo - [-1];
	gnrf_ccpRespawnArrayIndex = nil;