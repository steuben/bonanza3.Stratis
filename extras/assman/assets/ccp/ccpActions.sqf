
///CCP///

//show ccp actions
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("CCP") + "</t>"),"gen_action.sqf",[{
	
	gnrf_ccpAct = true;
	
}],0,false, false,"","isNil 'gnrf_ccpAct'"];

//hide ccp actions
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Hide CCP Options") + "</t>"),"gen_action.sqf",[{
	
	gnrf_ccpAct = nil;
	
}],0,false, false,"","!isNil 'gnrf_ccpAct'"];

//deploy ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Deploy CCP") + "</t>"),"gen_action.sqf",[{
	
	[] call gnrf_fnc_deployCCP;
	
}],0,false, false,"","(isNil 'gnrf_handleCCP') AND (isNil 'gnrf_ccpObj') AND (!isNil 'gnrf_ccpAct')"];

//reposition ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Reposition CCP") + "</t>"),"gen_action.sqf",[{
	
	[] call gnrf_fnc_deployCCP;
	
}],0,false, false,"","(isNil 'gnrf_handleCCP') AND (!isNil 'gnrf_ccpObj') AND (!isNil 'gnrf_ccpAct')"];

//deconstruct ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Deconstruct CCP") + "</t>"),"gen_action.sqf",[{
	
	deleteVehicle gnrf_ccpObj;
	gnrf_ccpObj = nil;
	gnrf_respawnInfo set [count gnrf_respawnInfo, [gnrf_ccpObj, 5]];//
	gnrf_respawnInfo set [gnrf_ccpRespawnArrayIndex, -1];
	gnrf_respawnInfo = gnrf_respawnInfo - [-1];
	gnrf_ccpRespawnArrayIndex = nil;
	
}],0,false, false,"","(isNil 'gnrf_handleCCP') AND (!isNil 'gnrf_ccpObj') AND (!isNil 'gnrf_ccpAct')"];

//confirm ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Confirm") + "</t>"),"gen_action.sqf",[{
	
	gnrf_handleCCP = 0;
	
}],0,false, false,"","(gnrf_handleCCP ==1) AND (!isNil 'gnrf_ccpAct') AND gnrf_ccpInRange"];

//cancel ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Cancel") + "</t>"),"gen_action.sqf",[{
	
	gnrf_handleCCP = -1;
	
}],0,false, false,"","(gnrf_handleCCP ==1) AND (!isNil 'gnrf_ccpAct')"];