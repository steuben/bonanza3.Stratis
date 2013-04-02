objectiveAssigned = true;
publicVariable "objectiveAssigned";

private ["_location", "_patrolPositions", "_spawnPositions", "_terrain", "_name", "_objective", "_objectiveType", "_guardPositions","_taskmarker"];

//select random location
_location = [gnrf_campRogain] call bis_fnc_selectRandom; //add more locations to this array; define locations in locations.sqf

//select random objective type
_objectiveType = ["assault"] call bis_fnc_selectRandom; //add more objective types to this array

//select random objective of given type
switch (_objectiveType) do
{
	CASE "assault": //add new case for each objective type
	{
		_objective = [gnrf_fnc_assaultA] call bis_fnc_selectRandom; //add more assault objectives to this array
	};
};	

//spawn new mission
[_location] spawn _objective;