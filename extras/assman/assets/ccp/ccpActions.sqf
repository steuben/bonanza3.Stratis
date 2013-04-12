
//not visible for steuben
//confirm ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Confirm") + "</t>"),"gen_action.sqf",[{
	
	gnrf_handleCCP = 0;
	publicVariable "gnrf_handleCCP";
	
}],0,false, false,"","(gnrf_handleCCP ==1) AND gnrf_ccpInRange"];

//cancel ccp
_testCCP_act = player addAction [("<t color=""#FEDC7D"">" + ("Cancel") + "</t>"),"gen_action.sqf",[{
	
	gnrf_handleCCP = -1;
	publicVariable "gnrf_handleCCP";
	
}],0,false, false,"","gnrf_handleCCP ==1"];