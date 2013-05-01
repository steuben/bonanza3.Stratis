
//confirm ccp
gnrf_act_confirmCCP = player addAction [("<t color=""#FEDC7D"">" + ("Confirm") + "</t>"),"gen_action.sqf",[{
	
	gnrf_handleCCP = 0;
	publicVariable "gnrf_handleCCP";
	
}],0,false, false,"","gnrf_ccpInRange"];

//cancel ccp
gnrf_act_cancelCCP = player addAction [("<t color=""#FEDC7D"">" + ("Cancel") + "</t>"),"gen_action.sqf",[{
	
	gnrf_handleCCP = -1;
	publicVariable "gnrf_handleCCP";
	
}],0,false, false,"",""];