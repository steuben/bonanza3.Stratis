
private ["_area", "_infPatrol", "_vehPatrol", "_patrolPositions", "_infSpawn", "_infPos", "_terrain", "_guardPositions", "_name", "_taskmarker"];

_area = _this;
_infPatrol = _area getVariable "infPatrol";
_vehPatrol = _area getVariable "vehPatrol";
_infSpawn = _area getVariable "infSpawn";
_vehSpawn = _area getVariable "vehSpawn";
_guardPositions = _area getVariable "guard";
_size = _area getVariable "size";

_opforValue = 0;

//create patrol groups
while {_opforValue < _size} do
{
	//create group
	_opforGroup = [_infSpawn, _vehSpawn] call gnrf_fnc_groupGen;
	//send group on patrol
	[_opforGroup, _infPatrol, _vehPatrol] spawn gnrf_fnc_partrolWpGen;
	//get group value
	_grpValue = _opforGroup getVariable ["value", 0];
	_opforValue = _opforValue + _grpValue;
};

					
// create guard units
if (!isNil "_guardPositions") then 
{
	[_guardPositions, _infSpawn] call gnrf_fnc_guardGen;
};