
	private ["_area", "_buildings", "_tmpArray", "_posArray", "_diffFactor", "_posCount", "_wrkArray", "_rand", "_group", "_pos"];

	_area = _this select 0;
	_buildings = _area getVariable "garrison";
	_spawn = _area getVariable "infSpawn";
	
	{
		_tmpArray = _x call gnrf_fnc_getBuildingPos;
		_posArray = _posArray + _tmpArray;
	
	} forEach _buildings;
	
	_diffFactor = 1; //WIP - will be dependent on difficulty setting
	_posCount = count _posArray;
	_posCount = round (_posCount * _diffFactor);
	
	_wrkArray =+ _posArray;
	
	for "_i" from 1 to _posCount do 
	{
	
		//select random guard position and delete it from posArray
		_rand = floor(random count _wrkArray);
		_pos = _wrkArray select _rand;
		_wrkArray set [_rand, -1];
		_wrkArray = _wrkArray - [-1];

		
		_group = createGroup EAST;
		"O_Soldier_TL_F" createUnit [_spawn, _group, "opforTrashbin set [count opforTrashbin, this]; gnrf_currentUnit = this;", 0.7, "Major"];
		[gnrf_currentUnit, _pos] spawn gnrf_fnc_gotoBuildingPos;
		player setPos gnrf_currentUnit;
	};
	
	