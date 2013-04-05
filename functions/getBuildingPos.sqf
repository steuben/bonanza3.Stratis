

	private ["_posArray", "_tmpPos", "_building", "_i", "_done"]; 
	
	_building = nearestBuilding _this;
	
	_done = false;
	_i = 0;
	_posArray = [];
	
	while {!_done} do {
		
		_tmpPos = _building buildingPos _i;
		if (count (_tmpPos - [0,0,0]) != 0) then {
		
			_posArray set [count _posArray, _tmpPos];
			_i = _i + 1;
		
		} else {
		
			_done = true;
		};
	};
	
	if (count _posArray <= 1) then 
	{
		player sideChat "fnc_getBuildingPos: no positions found";
	};
	
	copyToClipboard	str(_posArray);
	
	_posArray
	
	
	