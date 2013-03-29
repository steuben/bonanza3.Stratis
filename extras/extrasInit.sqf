//////client//////
if (!isDedicated) then 
{

	////// client functions precompiled
	gnrf_playerRespawn_fnc = compile preProcessFileLineNumbers "client\functions\respawn.sqf";
	grnf_keyHandling_fnc = compile preProcessFileLineNumbers "client\functions\keyHandling.sqf";
	grnf_fnc_coinFlip = compile preProcessFileLineNumbers "extras\coinFlip.sqf";
	
	////// Scripts
	[] execVM "client\eventHandlers.sqf";
	[] execVM "extras\mapTool.sqf";
	[] execVM "extras\assman\assmanInit.sqf";
	[] execVM "extras\forceControl\forceControlInit.sqf";
	
	
	if ((paramsArray select 0) == 1) then 
	{
		[] execVM "extras\debug\debugInit.sqf";	
	
	} else {debugModeOn = false};
	
	If ((paramsArray select 1) == 1) then {[] execVM "extras\debug\setFriends.sqf"};
};

//////host//////
if (isServer) then 
{
	gnrf_fnc_partrolWpGen = compile preProcessFileLineNumbers "objectives\patrolWpGen.sqf";
	gnrf_fnc_assaultA = compile preProcessFileLineNumbers "objectives\assault_typeA\assaultInit.sqf";
	gnrf_fnc_groupGen = compile preProcessFileLineNumbers "objectives\groupGen.sqf";
	gnrf_fnc_guardGen = compile preProcessFileLineNumbers "objectives\guardGen.sqf";
	gnrf_fnc_populateArea = compile preProcessFileLineNumbers "objectives\populateArea.sqf";
	[] execVM "objectives\locations.sqf";
};
	
//define respawn position(s)	
//add respawn pos - players always spawn at the nearest spawnpos. parameters:
//[[position] OR global object name for dynamic position, offset (radius in m, 0 for exact positioning)] 	
gnrf_respawnInfo = [];
gnrf_respawnInfo = [[hunter, 10], [atv1, 10],[atv2, 10]];


// "Higher Command" - for sidechat purposes
higherCommand = group commanderReich;
commanderReich setGroupID ["LONGSWORD","GroupColor4"];


