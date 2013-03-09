

opforTrashbin = [];
publicVariable "opforTrashbin";


// Create OPFOR Group

opforGroup1 = createGroup EAST;

_groupSpawnlocation = [5024.97,5928.8,0];

_groupWP1 = [5021.96,5915.03,0];
_groupWP2 = [5028.84,5882.32,0];
_groupWP3 = [5020.88,5869.84,0];
_groupWP4 = [5021.74,5872.21,0];

		"O_Soldier_TL_F" createUnit [_groupSpawnlocation, opforGroup1, "opforGroup1_1=this; opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [_groupSpawnlocation, opforGroup1, "opforGroup1_2=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_Soldier_lite_F" createUnit [_groupSpawnlocation, opforGroup1, "opforGroup1_3=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [_groupSpawnlocation, opforGroup1, "opforGroup1_4=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];


					// WAYPOINTS
					
					_wp = opforGroup1 addWaypoint [_groupWP1, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup1 addWaypoint [_groupWP2, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup1 addWaypoint [_groupWP3, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup1 addWaypoint [_groupWP4, 2];
					_wp setWaypointType "GUARD";
					_wp setWaypointFormation "LINE";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointTimeout [0, 0, 0];
					_wp setWaypointStatements ["true", ""];

					

// Create OPFOR Group

opforGroup2 = createGroup EAST;

_groupSpawnlocation = [5003.68,5909.64,0];

_groupWP1 = [5020.1,5897.28,0];
_groupWP2 = [5012.15,5859.19,0];
_groupWP3 = [4975.25,5851.07,0];
_groupWP4 = [4947.99,5859.36,0];

		"O_Soldier_TL_F" createUnit [_groupSpawnlocation, opforGroup2, "opforGroup2_1=this; opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [_groupSpawnlocation, opforGroup2, "opforGroup2_2=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_Soldier_lite_F" createUnit [_groupSpawnlocation, opforGroup2, "opforGroup2_3=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [_groupSpawnlocation, opforGroup2, "opforGroup2_4=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];


					// WAYPOINTS
					
					_wp = opforGroup2 addWaypoint [_groupWP1, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup2 addWaypoint [_groupWP2, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup2 addWaypoint [_groupWP3, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup2 addWaypoint [_groupWP4, 2];
					_wp setWaypointType "GUARD";
					_wp setWaypointFormation "LINE";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
			
			
// Create OPFOR Group

opforGroup3 = createGroup EAST;

_groupSpawnlocation = [4999.65,5879.63,0];

_groupWP1 = [4946.79,5864.55,0];
_groupWP2 = [4916.44,5883.82,0];
_groupWP3 = [4903.27,5898.9,0];
_groupWP4 = [4887.43,5897.18,0];

		"O_Soldier_TL_F" createUnit [_groupSpawnlocation, opforGroup3, "opforGroup3_1=this; opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [_groupSpawnlocation, opforGroup3, "opforGroup3_2=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_soldier_M_F" createUnit [_groupSpawnlocation, opforGroup3, "opforGroup3_3=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [_groupSpawnlocation, opforGroup3, "opforGroup3_4=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];


					// WAYPOINTS
					
					_wp = opforGroup3 addWaypoint [_groupWP1, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup3 addWaypoint [_groupWP2, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup3 addWaypoint [_groupWP3, 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup3 addWaypoint [_groupWP4, 2];
					_wp setWaypointType "GUARD";
					_wp setWaypointFormation "LINE";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					