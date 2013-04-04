
	_4dPosArray = _this select 0;
	
	_diffFactor = 0.8; //WIP - will be dependent on difficulty setting
	_posCount = count _4dPosArray;
	_posCount = round (_posCount * _diffFactor);
	
	_wrkArray =+ _4dPosArray;
	
	for "_i" from 1 to _posCount do 
	{
	
		//select random guard position and delete it from posArray
		_rand = floor(random count _wrkArray);
		_4dPos = _wrkArray select _rand;
		_wrkArray set [_rand, -1];
		_wrkArray = _wrkArray - [-1];
		
		_dir = _4dPos select 3;
		_pos = _4dPos - [_dir];
		
		_group = createGroup EAST;
		"O_Soldier_TL_F" createUnit [[0,0,5000], _group, "opforTrashbin set [count opforTrashbin, this]; gnrf_currentUnit = this;", 0.7, "Major"];
		gnrf_currentUnit setPosASL _pos; 
		gnrf_currentUnit setDir _dir;
	};