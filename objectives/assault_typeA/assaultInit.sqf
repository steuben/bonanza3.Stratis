
private ["_area", "_patrol", "_patrolPositions", "_spawnPositions", "_spawn", "_terrain", "_guardPositions", "_name", "_taskmarker"];

_area = _this select 0;
_patrol = _area getVariable "patrol";
_spawnPositions = _area getVariable "spawn";
_terrain = _area getVariable "terrain";
_name = _area getVariable "name";
_guardPositions = _area getVariable "guard";
_taskmarker = getPos _area;


[_name, _terrain, _taskmarker] execVM "objectives\assault_typeA\taskhandling.sqf";


// Create OPFOR Patrol Groups
_spawn = _spawnPositions call bis_fnc_selectRandom;
_opforGroup = _spawn call gnrf_fnc_groupGen;
_patrolPositions = _patrol call bis_fnc_selectRandom;
[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;

_spawn = _spawnPositions call bis_fnc_selectRandom;
_opforGroup = _spawn call gnrf_fnc_groupGen;
_patrolPositions = _patrol call bis_fnc_selectRandom;
[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;

_spawn = _spawnPositions call bis_fnc_selectRandom;
_opforGroup = _spawn call gnrf_fnc_groupGen;
_patrolPositions = _patrol call bis_fnc_selectRandom;
[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;


/////////////////////////////////////////////////////////////////
					
// Create OPFOR Guard Groups

		//Group
		if (!isNil "_guardPositions") then 
		{
			{
				_opforGroup = createGroup EAST;
				"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
				[_opforGroup, [_x]] spawn gnrf_fnc_partrolWpGen;
				
			} forEach _guardPositions;

		};	


publicVariable "opforTrashbin";

//titleText [format ["Mission: Assault %1", _name], "PLAIN"];

//debug variables
//player sideChat format ["PATROL: %1 ### SPAWN: %2 ### TERRAIN: %3 ### NAME: %4 ### OBJECTIVE: %5 ###GUARD: %6", _patrolPositions, _spawnPositions, _terrain, _name, _guardPositions];