
// [_group, _posArray] spawn gnrf_fnc_partrolWpGen

private ["_group", "_posArray", "_wpCnt", "_clockwise", "_wpPos", "_wp", "_guard"];

_group = _this select 0;

waitUntil {alive leader _group};

_posArray = _group getVariable "posArray";		
if (isNil "_posArray") then
{
	_posArray = _this select 1;
	_group setVariable ["posArray", _posArray];
	if (count _posArray == 1) then {_guard = true} else {_guard = false};
};

_wpCnt = _group getVariable "wpCnt";
if (isNil "_wpCnt") then
{
	_wpCnt = round (random ((count _posArray) - 1));
	_group setVariable ["wpCnt", _wpCnt];
};

_clockwise = _group getVariable "clockwise";
if (isNil "_clockwise") then
{
	_clockwise = [true, false] select (round (random 1));
	_group setVariable ["clockwise", _clockwise];
};


//cycle check points
if (_clockwise) then
{
	if (_wpCnt >= (count _posArray) -1) then {_wpCnt = 0} else {_wpCnt = _wpCnt +1};
} 
else 
{
	if (_wpCnt <= 0) then {_wpCnt = (count _posArray) -1} else {_wpCnt = _wpCnt -1};
};

_group setVariable ["wpCnt", _wpCnt];	
_wpPos = _posArray select _wpCnt;	

//delete previous waypoints
while {(count (waypoints _group)) > 0} do {deleteWaypoint ((waypoints _group) select 0)};

//add waypoint
if (!_guard) then
{
	_wp = _group addWaypoint [_wpPos, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "FILE";
	_wp setWaypointCompletionRadius 1;
	_wp setWaypointStatements ["true", "[group this] spawn gnrf_fnc_partrolWpGen"];
	_wp setWaypointTimeout [2, 3, 5];
	
} else
{
	_wp = _group addWaypoint [_wpPos, 0];
	_wp setWaypointType "Hold";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "FILE";
	_wp setWaypointCompletionRadius 0.5;
	_wp setWaypointStatements ["true", ""];
	_wp setWaypointTimeout [0, 0, 0];
};