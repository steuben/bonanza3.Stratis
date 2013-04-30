
 // AT SPECIALIST GUIDED
_unitClass = "B_soldier_LAT_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: AT Specialist, Guided
//			Primary Weapon: M4 
//			Launcher: NLAW
//			Optics: Acog
//			Extras: None



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_HelmetB_paint";

			// Carrier / Chestrig / Vest
			unit addVest "V_PlateCarrier1_cbr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam_tshirt";

			// Backpack
			unit addBackpack "B_Kitbag_mcamo";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["FHQ_30Rnd_556x45_Stanag_Tracer_Red", 8];

			// PRIMARY WEAPON
			unit addWeapon "FHQ_M4A1_BLK";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "FHQ_optic_ACOG";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades

			// SECONDARY WEAPON

			// LAUNCHER
			unit addMagazines ["NLAW_F", 2];
			unit addWeapon "launch_NLAW_F";

			// Grenades
			
			// Items
			unit addItem  "FirstAidKit";
			unit addItem  "FirstAidKit";
			unit addItem  "FirstAidKit";

			reload unit;




// ADD TO TEAM ARRAY

if (player == steuben) then 
	{
		gnrf_team_steuben set [count gnrf_team_steuben, unit];
	};

if (player == gnarfo) then 
	{
		gnrf_team_gnarfo set [count gnrf_team_gnarfo, unit];
	};