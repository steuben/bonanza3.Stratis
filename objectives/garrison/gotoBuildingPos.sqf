
	 
	_unit = _this select 0;
	_pos = _this select 1;
	_unit doMove _pos; 
	waitUntil {sleep 0.11; (_unit distance _pos) < 1.5}; 
	doStop _unit;
