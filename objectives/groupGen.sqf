
private ["_infPos", "_vehPos", "_value", "_isVehicle", "_unitClassNames", "_ranks", "_skill", "_group", "_className", "_vehicle", "_crew", "_cargo", "_units"];

_infSpawn = _this select 0;
_vehSpawn = _this select 1;
_value = round (random 3)+3;
_isVehicle = 40 call grnf_fnc_coinFlip;
_unitClassNames = ["O_Soldier_lite_F", "O_Soldier_AR_F", "O_Soldier_LAT_F"];
_vehicleClassNames = ["O_Ifrit_MG_F", "O_Ifrit_GMG_F"];
_ranks = ["Corporal", "Private"];
_skill = gnrf_opforSkill;

_group = createGroup EAST;
//store group ID for clean up
gnrf_groupTrashbin set [count gnrf_groupTrashbin, _group];

if (!_isVehicle) then
{
	_infPos = _infSpawn call bis_fnc_selectRandom;
	_group setVariable ["value", _value];
	_group setVariable ["isVehicle", false];
	
	if (_value > 4) then 
	{
		"O_Soldier_TL_F" createUnit [_infPos, _group, "opforTrashbin set [count opforTrashbin, this];", _skill, "Major"];
		_value = _value -1;
	};

	for "_i" from 1 to _value do
	{
		_className = _unitClassNames call bis_fnc_selectRandom;
		_rank = _ranks call bis_fnc_selectRandom;
		_className createUnit [_infPos, _group, "opforTrashbin set [count opforTrashbin, this];", _skill, _rank];
	};
} else
{
	_vehPos = _vehSpawn call bis_fnc_selectRandom;
	_className = _vehicleClassNames call bis_fnc_selectRandom;
		
	_vehicle = _className createVehicle _vehPos;
	vehicleTrashbin set [count vehicleTrashbin, _vehicle];
	_crew = getText (configFile >> "cfgVehicles" >> _className >> "crew");
	_cargo = getArray (configFile >> "cfgVehicles" >> _className >> "typicalcargo");
	_units = [_crew] + _cargo;

	for "_i" from 0 to (count _units)-1 do
	{
		_className = _units select _i;
		_rank = _ranks call bis_fnc_selectRandom;
		_unit = _group createUnit [_className, _vehPos, [], 0, "FORM"];
		opforTrashbin set [count opforTrashbin, _unit];
		_unit setSkill _skill;
		_unit setRank _rank;
		switch (_i) do
		{
			case 0 :
			{
				_unit moveInDriver _vehicle;
			};
			case 1 :
			{
				_unit moveInGunner _vehicle;
			};
			case 2 :
			{
				_unit moveInCommander _vehicle;
				if (vehicle _unit == _unit) then
				{
					_unit moveInCargo _vehicle;
				};
			};
			default
			{
				_unit moveInCargo _vehicle;
			};
		};
		
		_value = (count _units)*3;
		_group setVariable ["value", _value];
		_group setVariable ["isVehicle", true];
	};
};

_group




