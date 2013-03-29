
private["_handled", "_ctrl", "_dikCode", "_shift", "_ctrlKey", "_alt"];
_ctrl = _this select 0;
_dikCode = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;  
_handled = false;

//player sideChat format ["ctrl: %1  -  dikCode: %2 - shift: %3 - ctrlKey: %4 - alt: %5 - handled: %6", _ctrl, _dikCode, _shift, _ctrlKey, _alt, _handled ];

scopeName "main";
switch (_dikCode) do 
{	
		
	case 70 : 
	{
		// SHIFT-CONTROL
		if (_shift && _ctrlKey && !_alt && !debugModeOn) then  
		{
						
			if (isNil "grnf_debugActions_fnc") then
			{
				[] execVM "extras\debug\debugInit.sqf";
			
			} else 
			{
				if (isNil "gnrf_noDebugActions") then 
				{
					debugModeOn = true; 

				} else 
				{
					[] call grnf_debugActions_fnc;
					debugModeOn = true;
					gnrf_noDebugActions = nil;
				};
			};
			
			titleText ["Debug mode enabled", "PLAIN"];
			
			_handled = true;
			breakTo "main";
		};
		
		// SHIFT-CONTROL
		if (_shift && _ctrlKey && !_alt && debugModeOn) then  
		{
			titleText ["Debug mode disabled", "PLAIN"];
			debugModeOn = false;
			_handled = true; 
			breakTo "main";
		};	
	
		// Rollen
		if (!_shift && !_ctrlKey && !_alt && !assmanStart) then  {[] execVM "extras\assman\assmanStateHandler.sqf";_ok = createDialog "uiAssmanStart"; assmanStart = true; _handled = true; breakTo "main";};
		if (!_shift && !_ctrlKey && !_alt && assmanStart) then  {closeDialog 0; assmanStart = false; _handled = true; breakTo "main"};
		
		// ALT-Rollen
		if (!_shift && !_ctrlKey && _alt && !forceControlStart) then  {[] execVM "extras\forceControl\forceControlStateHandler.sqf";_ok = createDialog "uiForceControlStart"; forceControlStart = true; _handled = true; breakTo "main";};
		if (!_shift && !_ctrlKey && _alt && forceControlStart) then  {closeDialog 0; forceControlStart = false; _handled = true; breakTo "main"};
	};
};

_handled;  