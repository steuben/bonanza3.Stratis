
if (supportArty) then
{
	_dude =_this select 1;
	_dude sideChat "LONGSWORD, this is BONANZA. Requesting fire mission.";
	sleep 2;
	commanderReich sideChat "Negative, BONANZA. Fire mission already in progress. LONGSWORD out.";
		
};

if (!supportArty) then 
{
		supportArtyBusy = true;
		publicVariable "supportArtyBusy";
		
		_dude =_this select 1;
		_dude sideChat "LONGSWORD, this is BONANZA. Requesting fire mission.";
		
		// ARTY TEAM SPAWNEN
		
		artilleryAsset1 setVehicleAmmo 1;
		artilleryAsset2 setVehicleAmmo 1;
		
		artilleryTeam1 = Creategroup WEST;
		publicVariable "artilleryTeam1";
		"B_Soldier_lite_F" createUnit [[3288.22,5774.18,5.30073], artilleryTeam1, "artilleryTeamGunner1=this", 1, ""];
		sleep 2;
		"B_Soldier_lite_F" createUnit [[3288.22,5774.18,5.30073], artilleryTeam1, "artilleryTeamGunner2=this", 1, ""];
		//sleep 5;		
		artilleryTeamGunner1 moveInGunner artilleryAsset1;
		//sleep 5;
		artilleryTeamGunner2 moveInGunner artilleryAsset2;
		
		commanderReich sideChat "Solid Copy, BONANZA. Stand by.";
		
		sleep 4;
		
		// ARTY TEAM JOINEN
		
		waitUntil {(vehicle artilleryTeamGunner1 != artilleryTeamGunner1) AND (vehicle artilleryTeamGunner2 != artilleryTeamGunner2)};
		[artilleryTeamGunner1, artilleryTeamGunner2] joinSilent group _dude;
		commanderReich sideChat "BONANZA, indirect is ready to rock. Happy hunting, over.";
		sleep 2;
		_dude sideChat "Roger, LONGSWORD. BONANZA out.";
		
		supportArty = true;
		publicVariable "supportArty";
		
		supportArtyBusy = false;
		publicVariable "supportArtyBusy";
		
		
};