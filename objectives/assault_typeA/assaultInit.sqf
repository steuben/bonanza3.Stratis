
private ["_patrolPositions", "_spawnPositions", "_spawn", "_terrain", "_guardPositions", "_name", "_wp","_taskmarker"];

_patrolPositions = _this select 0;
_spawnPositions = _this select 1;
_terrain = _this select 2;
_name = _this select 3;
_guardPositions = _this select 4;
_taskmarker = _this select 5;
_spawn = _spawnPositions call bis_fnc_selectRandom;

[_name, _terrain, _taskmarker] execVM "objectives\assault_typeA\taskhandling.sqf";


// Create OPFOR Patrol Groups
		
		// Group
		_opforGroup = createGroup EAST;

		"O_Soldier_TL_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];

		[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;
		
		
		// Group
		_opforGroup = createGroup EAST;

		"O_Soldier_TL_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_soldier_M_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_LAT_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];

		[_opforGroup, _patrolPositions] spawn gnrf_fnc_partrolWpGen;
		
		
		// Group
		_opforGroup = createGroup EAST;

		"O_Soldier_TL_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_Soldier_LAT_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [_spawn, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];

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