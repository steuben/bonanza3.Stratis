
//[_guardPositions, _infSpawn] call gnrf_fnc_guardGen;

private ["_guardPositions", "_skill", "_diffFactor", "_posCount", "_posArray", "_opforGroup", "_spawnPos", "_infSpawn", "_rand", "_guardPos"];

_guardPositions = _this select 0;
_infSpawn = _this select 1;

_skill = gnrf_opforSkill;
_diffFactor = 0.7; //WIP - will be dependent on difficulty setting
_posCount = count _guardPositions;
_posCount = round (_posCount * _diffFactor);

_posArray =+ _guardPositions;

for "_i" from 1 to _posCount do
{
	//create guard unit
	_opforGroup = createGroup EAST;
	_spawnPos = _infSpawn call bis_fnc_selectRandom;
	"O_Soldier_lite_F" createUnit [_spawnPos, _opforGroup, "opforTrashbin set [count opforTrashbin, this];", _skill, "Private"];
	
	//select random guard position and delete it from posArray
	_rand = floor(random count _posArray);
	_guardPos = _posArray select _rand;
	_posArray set [_rand, -1];
	_posArray = _posArray - [-1];

	//create waypoint
	_wp = _opforGroup addWaypoint [_guardPos, 0];
	_wp setWaypointType "HOLD";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "FILE";
	_wp setWaypointCompletionRadius 0.5;
	_wp setWaypointStatements ["true", ""];
	_wp setWaypointTimeout [0, 0, 0];

	//store unit "value"
	_opforGroup setVariable ["value", 1];
	
	//store group ID for clean up
	gnrf_groupTrashbin set [count gnrf_groupTrashbin, _group];
};