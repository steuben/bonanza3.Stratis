

////add Action Menu
//show debugOptions
_debugMenu_act = player addAction [("<t color=""#4693FF"">" + ("Debug Options") + "</t>"),"gen_action.sqf",[{	
	
	gnrf_debugMenu = true;
	
}],0,false,false,"","(isNil 'gnrf_debugMenu') AND debugModeOn"];

//hide debugOptions
_debugHideMenu_act = player addAction [("<t color=""#4693FF"">" + ("Hide Debug Options") + "</t>"),"gen_action.sqf",[{	
	
	gnrf_debugMenu = nil;
	
}],0,false,true,"","gnrf_debugMenu AND debugModeOn"];

/*
//execute code from clipboard
_testCode_act = player addAction [("<t color=""#1F67CC"">" + ("Test Code") + "</t>"),"gen_action.sqf",[{
	
	_string = copyFromClipboard;
	call compile _string;
	
}],0,false, false,"","gnrf_debugMenu AND debugModeOn"];
*/

//copy Map coords to clipboard via mouseklick
_coordMode_act = player addAction [("<t color=""#1F67CC"">" + ("Save Map Pos") + "</t>"),"gen_action.sqf",[{	
	
	hintSilent "Map Position Mode enabled";
	gnrf_debugCoords = true;
	if (!visibleMap) then {openMap true};
	titleText ["Click on map to copy target coordinates to clipboard", "PLAIN DOWN"];
	onMapSingleClick "
	if ((_pos select 2) < 0) then {_pos = [_pos select 0, _pos select 1, abs(_pos select 2)]}; 
	gnrf_debug_posArray set [count gnrf_debug_posArray, _pos];
	copyToClipboard format ['%1', gnrf_debug_posArray]; 
	hintSilent format ['Position %1 added to clipboard', _pos];	
	true;
	";

}],0,false, true,"","gnrf_debugMenu AND debugModeOn"];

//end map pos saving
_endPosMode_act = player addAction [("<t color=""#1F67CC"">" + ("Exit MapPos Mode") + "</t>"),"gen_action.sqf",[{
	
	gnrf_debugCoords = nil;
	onMapSingleClick "";
	hintSilent "Map Position Mode disabled";
	
}],0,false,true,"","(gnrf_debugMenu) AND (!isNil 'gnrf_debugCoords') AND debugModeOn"];

//save my position
_savePos_act = player addAction [("<t color=""#1F67CC"">" + ("Save My Pos") + "</t>"),"gen_action.sqf",[{
	
	_pos = getPosASL player;
	gnrf_debug_posArray set [count gnrf_debug_posArray, _pos];
	copyToClipboard format ["%1", gnrf_debug_posArray]; 
	hintSilent format ["Position %1 added to clipboard", _pos];
	
}],0,false, false,"","gnrf_debugMenu AND debugModeOn"];

//clear all positions
_clearPos_act = player addAction [("<t color=""#1F67CC"">" + ("Clear All Positions") + "</t>"),"gen_action.sqf",[{
	
	gnrf_debug_posArray = [];
	hintSilent "Position Array Cleared";
	
}],0,false,true,"","(gnrf_debugMenu) AND (count gnrf_debug_posArray > 0) AND debugModeOn"];

//teleport
_teleport_act = player addAction ["<t color=""#1F67CC"">Teleport</t>","gen_action.sqf",[{	
	gnrf_teleportInUse = true;
	if (!visibleMap) then {openMap true};
	titleText ["Click on map to teleport", "PLAIN DOWN"];
	onMapSingleClick "onMapSingleClick''; player setPos _pos; openMap false; gnrf_teleportInUse = nil; true;";
}],0,false,true,"","(isNil 'gnrf_teleportInUse') AND (gnrf_debugMenu) AND debugModeOn"];

//map tool
_mapTool_act = player addAction [("<t color=""#1F67CC"">" + ("Map Tool") + "</t>"),"gen_action.sqf",[{
	
	[] spawn gnrf_mapTool_fnc
	
}],0,false, false,"","gnrf_debugMenu AND debugModeOn AND (isNil 'gnrf_rulerMode')"];

//kill all opfor units
_killOpfor_act = player addAction [("<t color=""#1F67CC"">" + ("Kill OPFOR units") + "</t>"),"gen_action.sqf",[{
	
	{_x setDamage 1} forEach opforTrashbin;
	
}],0,false, false,"","gnrf_debugMenu AND debugModeOn"];