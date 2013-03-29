
// [_group, _posArray] spawn gnrf_fnc_partrolWpGen

private ["_group", "_posArray", "_wpCnt", "_clockwise", "_wpPos", "_wp"];

_group = _this select 0;

waitUntil {alive leader _group};

_posArray = _group getVariable ["posArray", []];	
if (count _posArray == 0) then
{
	_posArray = _this select 1;
	_group setVariable ["posArray", _posArray];
};

_wpCnt = _group getVariable ["wpCnt", -1];	
if (_wpCnt < 0) then
{
	_wpCnt = round (random ((count _posArray) - 1));
	_group setVariable ["wpCnt", _wpCnt];
};

_clockwise = _group getVariable ["clockwise", "none"];	
if (_clockwise == "none") then
{
	_clockwise = ["yes", "no"] select (round (random 1));
	_group setVariable ["clockwise", _clockwise];
};


//cycle check points
if (_clockwise == "yes") then
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

//player sideChat format ["group: %1 ### posArray: %2 ### wpCnt: %3 ### clockwise: %4 ### wpPos: %5 ### wp: %6 ### guard: %7", _group, _posArray, _wpCnt, _clockwise, _wpPos, _wp, _guard];

//add  patrol waypoint...
if (count _posArray > 1) then
{
	_wp = _group addWaypoint [_wpPos, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "FILE";
	_wp setWaypointCompletionRadius 8;
	_wp setWaypointStatements ["true", "[group this] spawn gnrf_fnc_partrolWpGen;"];
	_wp setWaypointTimeout [0, 0, 0];
	
} else
{
//...or  guard waypoint
	_wp = _group addWaypoint [_wpPos, 0];
	_wp setWaypointType "HOLD";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "FILE";
	_wp setWaypointCompletionRadius 0.5;
	_wp setWaypointStatements ["true", ""];
	_wp setWaypointTimeout [0, 0, 0];
};