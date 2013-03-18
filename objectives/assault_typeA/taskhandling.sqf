_name = _this select 0;
_terrain = _this select 1;
_taskmarker = _this select 2;


// SETUP TASKS
		assaultTaskSteuben = steuben createSimpleTask ["Assault"]; 
		assaultTaskSteuben setSimpleTaskDescription [format ["BONANZA-3 is to plan and conduct an assault on %2 %1 immediately.", _name, _terrain], format ["Assault %1", _name], format ["%1", _name]];
		assaultTaskSteuben setSimpleTaskDestination _taskmarker;
		assaultTaskSteuben setTaskState "Assigned";
		steuben setCurrentTask assaultTaskSteuben;

		assaultTaskGnarfo = gnarfo createSimpleTask ["Assault"]; 
		assaultTaskGnarfo setSimpleTaskDescription [format ["BONANZA-3 is to plan and conduct an assault on %2 %1 immediately.", _name, _terrain], format ["Assault %1", _name], format ["%1", _name]];
		assaultTaskGnarfo setSimpleTaskDestination _taskmarker;
		assaultTaskGnarfo setTaskState "Assigned";
		gnarfo setCurrentTask assaultTaskGnarfo;

	
// SETUP TRIGGER

		_trigger=createTrigger["EmptyDetector",_taskmarker];
		_trigger setTriggerArea[600,600,0,false];
		_trigger setTriggerActivation["EAST","NOT PRESENT",false];
		_trigger setTriggerStatements["this", "assaultTaskSteuben setTaskState 'Succeeded'; assaultTaskGnarfo setTaskState 'Succeeded'; taskhint ['Objective completed.', [0, 1, 0, 1], 'taskDone']; commanderReich sideChat 'Outstanding, BONANZA! Objective completed, Return to Base. LONGSWORD out.';", ""];
		