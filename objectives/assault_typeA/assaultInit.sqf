
private ["_area", "_infPatrol", "_vehPatrol", "_patrolPositions", "_infSpawn", "_infPos", "_terrain", "_guardPositions", "_name", "_taskmarker"];

_area = _this select 0;
_infPatrol = _area getVariable "infPatrol";
_vehPatrol = _area getVariable "vehPatrol";
_infSpawn = _area getVariable "infSpawn";
_vehSpawn = _area getVariable "vehSpawn";
_terrain = _area getVariable "terrain";
_name = _area getVariable "name";
_guardPositions = _area getVariable "guard";
_size = _area getVariable "size";
_taskmarker = getPos _area;


[_name, _terrain, _taskmarker] execVM "objectives\assault_typeA\taskhandling.sqf";


// Create OPFOR Patrol Groups

//group1
_infPos = _infSpawn call bis_fnc_selectRandom;
_vehPos = _vehSpawn call bis_fnc_selectRandom;
_opforGroup = [_infPos, _vehPos] call gnrf_fnc_groupGen;
_isVehicle = _opforGroup getVariable "isVehicle";
if (!_isVehicle) then
{
	_patrolPositions = _infPatrol call bis_fnc_selectRandom;
} 
else
{
	_patrolPositions = _vehPatrol call bis_fnc_selectRandom;
	
};
[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;

//group2
_infPos = _infSpawn call bis_fnc_selectRandom;
_vehPos = _vehSpawn call bis_fnc_selectRandom;
_opforGroup = [_infPos, _vehPos] call gnrf_fnc_groupGen;
_isVehicle = _opforGroup getVariable "isVehicle";
if (!_isVehicle) then
{
	_patrolPositions = _infPatrol call bis_fnc_selectRandom;
} 
else
{
	_patrolPositions = _vehPatrol call bis_fnc_selectRandom;
	
};
[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;

//group3
_infPos = _infSpawn call bis_fnc_selectRandom;
_vehPos = _vehSpawn call bis_fnc_selectRandom;
_opforGroup = [_infPos, _vehPos] call gnrf_fnc_groupGen;
_isVehicle = _opforGroup getVariable "isVehicle";
if (!_isVehicle) then
{
	_patrolPositions = _infPatrol call bis_fnc_selectRandom;
} 
else
{
	_patrolPositions = _vehPatrol call bis_fnc_selectRandom;
	
};
[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;

/////////////////////////////////////////////////////////////////
					
// Create OPFOR Guard Groups

if (!isNil "_guardPositions") then 
{
	_skill = gnrf_opforSkill;
	_diffFactor = 0.7; //WIP - will be dependent on difficulty setting
	_posCount = count _guardPositions;
	_posCount = round (_posCount * _diffFactor);
	
	_posArray =+ _guardPositions;
	
	for "_i" from 1 to _posCount do
	{
		_opforGroup = createGroup EAST;
		_spawnPos = _infSpawn call bis_fnc_selectRandom;
		"O_Soldier_lite_F" createUnit [_spawnPos, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", _skill, "Private"];
		
		_rand = floor(random count _posArray);
		_guardPos = _posArray select _rand;
		_posArray set [_rand, -1];
		_posArray = _posArray - [-1];
		[_opforGroup, [_guardPos]] spawn gnrf_fnc_partrolWpGen;
		player sideChat format ["count: %1 ### guardPos: %2", count _posArray, _guardPos];
	};
};	


publicVariable "opforTrashbin";

//titleText [format ["Mission: Assault %1", _name], "PLAIN"];

//debug variables
//player sideChat format ["PATROL: %1 ### SPAWN: %2 ### TERRAIN: %3 ### NAME: %4 ### OBJECTIVE: %5 ###GUARD: %6", _patrolPositions, _infSpawn, _terrain, _name, _guardPositions];