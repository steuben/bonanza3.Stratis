
 // ASSAULT COMBAT MEDIC
_unitClass = "B_medic_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: Assault Combat Medic
//			Primary Weapon: M4  
//			Optics: Holo+4xZoom
//			Extras: Medikit



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_HelmetB_light";

			// Carrier / Chestrig / Vest
			unit addVest "V_PlateCarrier1_cbr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam_vest";

			// Backpack
			unit addBackpack "B_AssaultPack_blk";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["FHQ_30Rnd_556x45_Stanag_Tracer_Red", 12];

			// PRIMARY WEAPON
			unit addWeapon "FHQ_M4A1_BLK";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "FHQ_optic_HWS_G33";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades

			// SECONDARY WEAPON

			// LAUNCHER

			// Grenades

			// Items
			unit addItem  "FirstAidKit";
			unit addItem  "FirstAidKit";
			unit addItem  "FirstAidKit";
			unit addItem  "Medikit";

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