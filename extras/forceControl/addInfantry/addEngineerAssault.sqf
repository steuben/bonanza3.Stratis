
// ASSAULT COMBAT ENGINEER
_unitClass = "B_soldier_repair_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: Assault Combat Engineer
//			Primary Weapon: M4  
//			Optics: Holosight
//			Extras: Toolkit, Grenades



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_HelmetB_light";

			// Carrier / Chestrig / Vest
			unit addVest "V_PlateCarrier1_cbr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam_tshirt";

			// Backpack
			unit addBackpack "B_FieldPack_cbr_Repair";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["FHQ_30Rnd_556x45_Stanag_Tracer_Red", 12];

			// PRIMARY WEAPON
			unit addWeapon "FHQ_M4A1_BLK";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "optic_Holosight";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades

			// SECONDARY WEAPON

			// LAUNCHER

			// Grenades
			unit addMagazines ["HandGrenade", 4];

			// Items
			unit addItem  "FirstAidKit";
			unit addItem  "FirstAidKit";
			unit addItem  "FirstAidKit";
			unit addItem  "ToolKit";

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