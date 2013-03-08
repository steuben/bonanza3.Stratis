
//execute code from clipboard
_testCode_act = player addAction [("<t color=""#1F67CC"">" + ("Test Code") + "</t>"),"gen_action.sqf",[{
	
	_string = copyFromClipboard;
	call compile _string;
	
}],0,false, false,"",""];