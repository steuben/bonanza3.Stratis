
//debugModeOn
debugModeOn = true;

//precompile actions fnc
grnf_debugActions_fnc = compile preProcessFileLineNumbers "extras\debug\debugActions.sqf";

//create positions array
if (isNil "gnrf_debug_posArray") then 
{
	gnrf_debug_posArray = [];
};

//set time
setDate [2010, 11, 28, 13, 0];

//add debug actions
waitUntil {!isNil "grnf_debugActions_fnc"};

[] call grnf_debugActions_fnc;

//title text message
If ((paramsArray select 1) == 0) then 
{
	titleText ["Debug mode enabled", "PLAIN"];
} else
{
	titleText ["Debug mode enabled. AI behaviour set to 'friendly'.", "PLAIN"];
};