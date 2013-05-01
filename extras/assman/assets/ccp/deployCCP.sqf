
	private ["_mark", "_dis", "_z", "_pos"];

	gnrf_handleCCP = 1;
	
	_mark = createVehicle ["Sign_Arrow_Location_F", [0,0,5000], [], 0, ""];
	
	gnrf_ccpInRange = false;
	[] call gnrf_fnc_ccpActions;	
	
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
		
		sleep 0.02;
	};
	
	player removeAction gnrf_act_confirmCCP;
	player removeAction gnrf_act_cancelCCP;
	gnrf_ccpInRange = nil;
	
	if ((!alive player) OR (gnrf_handleCCP < 0)) exitWith
	{
		deleteVehicle _mark;
		gnrf_handleCCP = nil;
	};
	
	_h = createVehicle ["Land_HelipadEmpty_F", getPos _mark, [], 0, ""];
	_pos = getPos _h;
	deleteVehicle _h;
	deleteVehicle _mark;
	
	if (isNil "gnrf_ccpObj") then
	{
		[0, 
		{
			gnrf_ccpObj = createVehicle ["B_supplyCrate_F", _this, [], 0, ""];
			gnrf_ccpRespawnArrayIndex = count gnrf_respawnInfo;
			gnrf_respawnInfo set [gnrf_ccpRespawnArrayIndex, [gnrf_ccpObj, 5]];
			publicVariable "gnrf_ccpObj";
			publicVariable "gnrf_respawnInfo";
			
		}, _pos] call CBA_fnc_globalExecute;
	}
	else
	{	
		gnrf_ccpObj setPos _pos;
	};
	
	gnrf_handleCCP = nil;
	//publicVariable "gnrf_handleCCP";
