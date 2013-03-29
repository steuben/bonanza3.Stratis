
_area = _this select 0;
_terrain = _area getVariable "terrain";
_taskmarker = getPos _area;
_name = _area getVariable "name";

//create task
[_name, _terrain, _taskmarker] execVM "objectives\assault_typeA\taskhandling.sqf";

//populate area
_area call gnrf_fnc_populateArea;	