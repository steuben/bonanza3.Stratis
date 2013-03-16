
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
		
	case 70 : {
	
		if (_shift && _ctrlKey && !_alt && !debugModeOn && (paramsArray select 0) != 1) then  
		{
			titleText ["Debug mode enabled", "PLAIN"];
			debugModeOn = true; 
			if (isNil "gnrf_debugCalledOnce") then 
			{
				paramsArray set [0,1]; 
				gnrf_debugCalledOnce = true;
			};
			_handled = true;
			breakTo "main";
		};
		
		if (_shift && _ctrlKey && !_alt && debugModeOn && (paramsArray select 0) != 1) then  
		{
			titleText ["Debug mode disabled", "PLAIN"];
			paramsArray set [0,0]; 
			debugModeOn = false;
			_handled = true; 
			breakTo "main";
		};	
	
		if (!_shift && !_ctrlKey && !_alt && !assmanStart) then  {[] execVM "extras\assman\assmanStateHandler.sqf";_ok = createDialog "uiAssmanStart"; assmanStart = true; _handled = true; breakTo "main";};
		if (!_shift && !_ctrlKey && !_alt && assmanStart) then  {closeDialog 0; assmanStart = false; _handled = true; breakTo "main"};
	};
};

_handled;  