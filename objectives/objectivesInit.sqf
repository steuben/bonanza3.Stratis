

private ["_location", "_patrolPositions", "_spawnPositions", "_terrain", "_name", "_objective", "_objectiveType", "_guardPositions"];

if (isNil "opforTrashbin") then
{
	opforTrashbin = [];
};

//LOCATIONS

_location = ["Camp Rogain"] call bis_fnc_selectRandom; //add more locations to this array; define locations in locations.sqf

switch (_location) do
{
	CASE "Camp Rogain": //add new case for each location
	{
		_patrolPositions = gnrf_campRogainPatrol call bis_fnc_selectRandom;
		_spawnPositions = gnrf_campRogainSpawn;
		_terrain = gnrf_campRogainTerrain;
		_name = gnrf_campRogainName;
		_guardPositions = gnrf_campRogainGuard;
	};
};

//OBJECTIVES

_objectiveType = ["assault"] call bis_fnc_selectRandom; //add more objective types to this array

switch (_objectiveType) do
{
	CASE "assault": //add new case for each objective type
	{
		_objective = [gnrf_fnc_assaultA] call bis_fnc_selectRandom; //add more assault objectives to this array
	};
};	

//debug variables
//player sideChat format ["PATROL: %1 ### SPAWN: %2 ### TERRAIN: %3 ### NAME: %4 ### OBJECTIVE: %5 ###GUARD: %6", _patrolPositions, _spawnPositions, _terrain, _name, _objectiveType, _guardPositions];

//spawn new mission
[_patrolPositions, _spawnPositions, _terrain, _name, _guardPositions] spawn _objective;