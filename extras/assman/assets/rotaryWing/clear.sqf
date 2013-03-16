supportRotarywingBusy = true;
publicVariable "supportRotarywingBusy";

rotarywingRemove = true;
publicVariable "rotarywingRemove";

victor removeAction clearSupportCAS;

_dude =_this select 1;
_dude sideChat "Manatee, that would be all for now. RTB, copy.";

teamRotarywing2 = Creategroup WEST;
//[manatee1, manatee2] joinSilent teamRotarywing2;
[manatee1] joinSilent teamRotarywing2;

teamRotarywing2 = group manatee1;
manatee1 setGroupID ["MANATEE","GroupColor4"];

sleep 2;

manatee_WP1 = teamRotarywing2 addWaypoint [[3274.57,5780.01,5.35225], 1];
manatee_WP1  setWaypointType "MOVE"; 
manatee_WP1  setWaypointFormation "WEDGE";
manatee_WP1  setWaypointBehaviour "SAFE";
manatee_WP1  setWaypointSpeed "FULL";
manatee_WP1 setWaypointStatements ["true", "RTB=true"];

sleep 2;

manatee1 sideChat "Copy that BONANZA. Manatee RTB, out.";

waitUntil {RTB};

manatee1 leaveVehicle manatee;
//manatee2 leaveVehicle manatee;

//waitUntil {(vehicle manatee1 == manatee1) AND (vehicle manatee2 == manatee2)};
waitUntil {(vehicle manatee1 == manatee1)};


sleep 10;

deleteVehicle manatee1;
//deleteVehicle manatee2; 
deleteVehicle manatee; 

supportRotarywing = false;
publicVariable "supportRotarywing";

commanderReich sideChat "All BONANZA elements, be advised: Rotary standing by.";

RTB = false;
publicVariable "RTB";
supportRotarywingBusy = false;
publicVariable "supportRotarywingBusy";

// // Script complete
_dude sideChat "Copy that, LONGSWORD. BONANZA out.";