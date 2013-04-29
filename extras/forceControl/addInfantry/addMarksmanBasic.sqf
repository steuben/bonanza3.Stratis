
 // BASIC MARKSMAN
_unitClass = "B_soldier_M_F";

// CREATE
_unitClass createUnit [infSpawn, group player, "unit = this;", 1, ""];



// UNIT LOADOUT
//
//			Class: Basic Marksman
//			Primary Weapon: EBR 
//			Optics: ARCO
//			Extras: None



			removeAllWeapons unit;

			// Helmet / Soft Cover
			unit addHeadgear "H_Booniehat_mcamo";

			// Carrier / Chestrig / Vest
			unit addVest "V_BandollierB_rgr";

			// Uniform
			unit addUniform "U_B_CombatUniform_mcam_tshirt";

			// Backpack
			unit addBackpack "B_Kitbag_mcamo";


			// PRIMARY WEAPON MAGS 
			unit addMagazines ["20Rnd_762x45_Mag", 12];

			// PRIMARY WEAPON
			unit addWeapon "srifle_EBR_F";

			// PRIMARY WEAPON ATTACHMENTS
			unit addPrimaryWeaponItem "optic_Arco";
			unit addPrimaryWeaponItem "acc_pointer_IR";


			// SECONDARY WEAPON MAGS / 40mm Grenades

			// SECONDARY WEAPON

			// LAUNCHER

			// Grenadesunit addMagazines ["HandGrenade", 8];

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