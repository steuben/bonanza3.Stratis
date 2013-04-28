
 // ASSAULT RIFLEMAN
_unitClass = "B_Soldier_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: Assault Rifleman
//			Primary Weapon: MX 
//			Optics: Holo
//			Extras: Grenades



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_HelmetB";

			// Carrier / Chestrig / Vest
			unit addVest "V_PlateCarrier1_cbr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam_vest";

			// Backpack
			unit addBackpack "B_AssaultPack_rgr";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 12];

			// PRIMARY WEAPON
			unit addWeapon "arifle_MX_F";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "optic_Holosight";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades
			unit addMagazines ["30Rnd_9x21_Mag", 2];


			// SECONDARY WEAPON

			// LAUNCHER

			// Grenades
			unit addMagazines ["HandGrenade", 8];

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