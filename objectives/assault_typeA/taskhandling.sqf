_name = _this select 0;
_terrain = _this select 1;
_taskmarker = _this select 2;

assaultTaskSteuben = steuben createSimpleTask ["Assault"]; 
assaultTaskSteuben setSimpleTaskDescription [format ["Bonanza is to plan and conduct an assault on %2 %1 immediately.", _name, _terrain], format ["Assault %1", _name], format ["%1", _name]];
assaultTaskSteuben setSimpleTaskDestination _taskmarker;
assaultTaskSteuben setTaskState "Assigned";
steuben setCurrentTask assaultTaskSteuben;

assaultTaskGnarfo = gnarfo createSimpleTask ["Assault"]; 
assaultTaskGnarfo setSimpleTaskDescription [format ["Bonanza is to plan and conduct an assault on %2 %1 immediately.", _name, _terrain], format ["Assault %1", _name], format ["%1", _name]];
assaultTaskGnarfo setSimpleTaskDestination _taskmarker;
assaultTaskGnarfo setTaskState "Assigned";
gnarfo setCurrentTask assaultTaskGnarfo;