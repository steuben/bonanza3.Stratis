
_name = _this select 0;
_terrain = _this select 1;
_taskmarker = _this select 2;


commanderReich sideChat format ["BONANZA, this is LONGSOWRD. We need you to assault %1 ASAP, over.", _name];
sleep 2;
player sideChat "Roger that, LONGSWORD. We're on it. BONANZA out.";

// SETUP TASK

gnrf_globalTask = player createSimpleTask ["Assault"]; 
gnrf_globalTask setSimpleTaskDescription [format ["BONANZA-3 is to plan and conduct an assault on %2 %1 immediately.", _name, _terrain], format ["Assault %1", _name], format ["%1", _name]];
gnrf_globalTask setSimpleTaskDestination _taskmarker;
gnrf_globalTask setTaskState "Assigned";
player setCurrentTask gnrf_globalTask;
taskhint [format ["New Orders.\nAssault %1!", _name], [1, 1, 1, 1], "taskNew"];
	
// SETUP TRIGGER
		
gnrf_areaCleared = false;
_opforDetector=createTrigger["EmptyDetector",_taskmarker];
_opforDetector setTriggerArea[200,200,0,false];
_opforDetector setTriggerActivation["EAST","NOT PRESENT",true];
_opforDetector setTriggerTimeout [30, 30, 30, true];
_opforDetector setTriggerStatements["this", "gnrf_areaCleared = true", "gnrf_areaCleared = false"];

gnrf_areaCaptured = false;
_bluforDetector=createTrigger["EmptyDetector",_taskmarker];
_bluforDetector setTriggerArea[90,90,0,false];
_bluforDetector setTriggerActivation["WEST","PRESENT",false];
_bluforDetector setTriggerTimeout [35, 35, 35, true];
_bluforDetector setTriggerStatements[
"this AND ((steuben in thisList) OR (gnarfo in thisList))",
"gnrf_areaCaptured = true; 
if (!gnrf_areaCleared) then 
{
	player sideChat 'LONGSWORD, this is BONANZA. We have secured the objective, over.';
	sleep 2.5;
	commanderReich sideChat 'Copy that, BONANZA. Flush out and destroy remaining enemy forces in the area, how copy.';
	sleep 2.5;
	player sideChat 'Solid copy, LONGSWORD. BONANZA out.';
};	
", ""];


waitUntil {sleep 2; gnrf_areaCleared AND gnrf_areaCaptured};

gnrf_areaCleared = nil;
gnrf_areaCaptured = nil;
deleteVehicle _opforDetector;
deleteVehicle _bluforDetector;
gnrf_globalTask setTaskState "Succeeded"; 
taskhint ["Objective completed.", [0, 1, 0, 1], "taskDone"]; 
commanderReich sideChat "Outstanding, BONANZA! Objective completed, Return to Base. LONGSWORD out.";

// clean up
if (isServer) then
{
	sleep 30;
	{_x setDamage 1} forEach opforTrashbin;
	{hideBody _x} forEach opforTrashbin;
	sleep 8;
	{deleteVehicle _x} forEach opforTrashbin;
	{deleteVehicle _x} forEach vehicleTrashbin;
	{deleteGroup _x} forEach gnrf_groupTrashbin;
	
	opforTrashbin = [];
	vehicleTrashbin = [];
	gnrf_groupTrashbin = [];	
};

objectiveAssigned = false;
publicVariable "objectiveAssigned";
