
	private ["_mark", "_dis", "_z", "_pos"];

	gnrf_handleCCP = 1;
	
	_mark = createVehicle ["Sign_Arrow_Location_F", [0,0,5000], [], 0, ""];
			
	while {(gnrf_handleCCP > 0) AND (alive player)} do 
	{
		
		_dis = [player, _mark] call BIS_fnc_distance2D;
		
		if (_dis > 5) then 
		{
			_z = 5000; gnrf_ccpInRange = false;
		}
		else 
		{
			_z = 0; gnrf_ccpInRange = true;
		};
		
		_pos = screenToWorld [0.5,0.5];
		_mark setPos [_pos select 0, _pos select 1, _z];
		
		//sleep 0.02;
	};
	
	if ((!alive player) OR (gnrf_handleCCP < 0)) exitWith
	{
		deleteVehicle _mark;
		gnrf_handleCCP = nil;
	};
	
	_h = createVehicle ["Land_HelipadEmpty_F", getPos _mark, [], 0, ""];
	_pos = getPos _h;
	
	deleteVehicle _mark;
	
	if (isNil "gnrf_ccpObj") then
	{
		gnrf_ccpObj = createVehicle ["B_supplyCrate_F", _pos, [], 0, ""];
		gnrf_ccpRespawnArrayIndex = count gnrf_respawnInfo;
		gnrf_respawnInfo set [count gnrf_respawnInfo, [gnrf_ccpObj, 5]];
	}
	else
	{	
		gnrf_ccpObj setPos _pos;
	};
	
	gnrf_handleCCP = nil;
