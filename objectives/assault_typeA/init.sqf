

opforTrashbin = [];
publicVariable "opforTrashbin";


// Create OPFOR Group

opforGroup1 = createGroup EAST;

		"O_Soldier_TL_F" createUnit [[5024.97,5928.8,0], opforGroup1, "opforGroup1_1=this; opforTrashbin set [count opforTrashbin, this];", 0.5, "Major"];
		"O_Soldier_lite_F" createUnit [[5024.97,5928.8,0], opforGroup1, "opforGroup1_2=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Corporal"];
		"O_Soldier_lite_F" createUnit [[5024.97,5928.8,0], opforGroup1, "opforGroup1_3=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];
		"O_Soldier_AR_F" createUnit [[5024.97,5928.8,0], opforGroup1, "opforGroup1_4=this; opforTrashbin set [count opforTrashbin, this];", 0.3, "Private"];


					// WAYPOINTS
					
					_wp = opforGroup1 addWaypoint [[5021.96,5915.03,0], 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup1 addWaypoint [[5028.84,5882.32,0], 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup1 addWaypoint [[5020.88,5869.84,0], 2];
					_wp setWaypointType "MOVE";
					_wp setWaypointFormation "STAG COLUMN";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];
					
					_wp = opforGroup1 addWaypoint [[5021.74,5872.21,0], 2];
					_wp setWaypointType "GUARD";
					_wp setWaypointFormation "LINE";
					_wp setWaypointBehaviour "SAFE";
					_wp setWaypointSpeed "LIMITED";
					_wp setWaypointStatements ["true", ""];
					_wp setWaypointTimeout [0, 0, 0];


					
// Create OPFOR Group
