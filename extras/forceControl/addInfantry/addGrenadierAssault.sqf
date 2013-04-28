
 // BASIC RIFLEMAN
_unitClass = "B_Soldier_GL_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: Assault Grenadier
//			Primary Weapon: M4  
//			Optics: Holo
//			Extras: Grenades, 40mm



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_HelmetB_light";

			// Carrier / Chestrig / Vest
			unit addVest "V_PlateCarrier1_cbr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam_vest";

			// Backpack
			unit addBackpack "B_AssaultPack_cbr";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["FHQ_30Rnd_556x45_Stanag_Tracer_Red", 12];

			// PRIMARY WEAPON
			unit addWeapon "FHQ_M4A1_M203_BLK";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "optic_Holosight";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades
			unit addMagazines ["1Rnd_HE_Grenade_shell", 8];


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