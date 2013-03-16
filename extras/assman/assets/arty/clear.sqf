supportArtyBusy = true;
publicVariable "supportArtyBusy";

_dude =_this select 1;
_dude sideChat "LONGSWORD, this is BONANZA, that was outstanding. Fire mission complete!";
artilleryTeam1 = Creategroup WEST;
[artilleryTeamGunner1, artilleryTeamGunner2] joinSilent artilleryTeam1;

artilleryTeamGunner1 leaveVehicle artilleryAsset1;
artilleryTeamGunner2 leaveVehicle artilleryAsset2;
sleep 2;
commanderReich sideChat "You bet your ass, BONANZA. Always a pleasure!";
sleep 6;
deleteVehicle artilleryTeamGunner1;
deleteVehicle artilleryTeamGunner2;

supportArty = false;
publicVariable "supportArty";

supportArtyBusy = false;
publicVariable "supportArtyBusy";

commanderReich sideChat "Standing by for further fire missions. LONGSWORD out.";
