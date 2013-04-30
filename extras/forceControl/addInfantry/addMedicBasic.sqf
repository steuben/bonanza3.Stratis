
 // BASIC COMBAT MEDIC
_unitClass = "B_medic_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: Basic Combat Medic
//			Primary Weapon: MX 
//			Optics: Acog
//			Extras: None



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_HelmetB_paint";

			// Carrier / Chestrig / Vest
			unit addVest "V_PlateCarrier1_cbr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam";

			// Backpack
			unit addBackpack "B_AssaultPack_mcamo";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 12];

			// PRIMARY WEAPON
			unit addWeapon "arifle_MX_F";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "optic_Hamr";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades

			// SECONDARY WEAPON

			// LAUNCHER

			// GRENADES

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