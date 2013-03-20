
_pos = _this select 0;
_size = round (random 3)+3;
_isVehicle = [true, false] call bis_fnc_selectRandom;
_unitClassNames = ["O_Soldier_lite_F", "O_Soldier_AR_F", "O_Soldier_LAT_F"];
_vehicleClassNames = ["O_Galkin_MG_F", "O_Galkin_GMG_F"];
_ranks = ["Corporal", "Private"];
_skill = gnrf_opforSkill;

_group = createGroup EAST;

if (!_isVehicle) then
{
	_group setVariable ["size", _size];
	
	if (_size > 4) then 
	{
		"O_Soldier_TL_F" createUnit [_pos, _group, "opforTrashbin set [count opforTrashbin, this];", _skill, "Major"];
		_size = _size -1;
	};

	for "_i" from 1 to _size do
	{
		_className = _unitClassNames call bis_fnc_selectRandom;
		_rank = _ranks call bis_fnc_selectRandom;
		_className createUnit [_pos, _group, "opforTrashbin set [count opforTrashbin, this];", _skill, _rank];
	};
} else
{
	_className = _vehicleClassNames call bis_fnc_selectRandom;
		
	_vehicle = _className createVehicle _pos;
	
	_crew = getArray (configFile >> "cfgVehicles" >> _className >> "crew";
	_cargo = getArray (configFile >> "cfgVehicles" >> _className >> "typicalcargo";
	_units = [_crew] + _cargo;
	for "_i" form 0 to (count _units)-1 do
	{
		_className = _units select _i;
		_rank = _ranks call bis_fnc_selectRandom;
		_unit = _group createUnit [_className, _pos, [], 0, "FORM"];
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
			}
			case 2 :
			{
				_unit moveInCommander _vehicle;
			};
			default
			{
				_unit moveInCargo _vehicle
			};
		};
		
		_size = (count _units)*2;
		_group setVariable ["size", _size];
			
	};
};

_group



