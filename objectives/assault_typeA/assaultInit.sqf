
private ["_patrolPositions", "_spawnPositions", "_spawn", "_terrain", "_name", "_wp"];

_patrolPositions = _this select 0;
_spawnPositions = _this select 1;
_terrain = _this select 2;
_name = _this select 3;

_spawn = _spawnPositions call bis_fnc_selectRandom;

// Create OPFOR Group

_opforGroup = createGroup EAST;

"O_Soldier_TL_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
"O_Soldier_AR_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];

[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;
					
// Create OPFOR Group


publicVariable "opforTrashbin";

titleText [format ["Mission: Assault %1", _name], "PLAIN"];