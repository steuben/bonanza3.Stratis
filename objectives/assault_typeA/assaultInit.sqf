
_area = _this select 0;
_terrain = _area getVariable "terrain";
_taskmarker = getPos _area;
_name = _area getVariable "name";

//create task
gnrf_fnc_taskHandling
[[_name, _terrain, _taskmarker], gnrf_fnc_taskHandling] spawn BIS_fnc_MP;
//[-2, {[_this select 0, _this select 1, _this select 2] execVM "objectives\assault_typeA\taskhandling.sqf";}, [_name, _terrain, _taskmarker]] call CBA_fnc_globalExecute;

//populate area
_area call gnrf_fnc_populateArea;	