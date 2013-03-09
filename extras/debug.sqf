//debugModeOn
if ((paramsArray select 0) == 1) then
{
	debugModeOn = true;
};

//execute code from clipboard
_testCode_act = player addAction [("<t color=""#1F67CC"">" + ("Test Code") + "</t>"),"gen_action.sqf",[{
	
	_string = copyFromClipboard;
	call compile _string;
	
}],0,false, false,"","debugModeOn"];


_coordMode_act = player addAction [("<t color=""#1F67CC"">" + ("Save Map Pos") + "</t>"),"gen_action.sqf",[{	
	gnrf_debugCoords = true;
	gnrf_debug_posArray = [];
	if (!visibleMap) then {openMap true};
	titleText ["Click on map to copy target coordinates to clipboard", "PLAIN DOWN"];
	onMapSingleClick "
	if ((_pos select 2) < 0) then {_pos = [_pos select 0, _pos select 1, abs(_pos select 2)]}; 
	gnrf_debug_posArray set [count gnrf_debug_posArray, _pos];
	copyToClipboard format ['%1', gnrf_debug_posArray]; 
	hintSilent format ['Position %1 added to clipboard', _pos];	
	true;
	";
	
}],0,false, true,"","debugModeOn"]

