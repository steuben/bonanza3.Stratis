bravo = group gnarfo;
gnarfo setGroupID ["BONANZA-3-BRAVO","GroupColor4"];

//gnarfo loadout
_unit = gnarfo;
removeAllWeapons _unit;



// Helmet / Soft Cover
_unit addHeadgear "H_HelmetB_paint";

// Carrier / Chestrig / Vest
_unit addVest "V_PlateCarrierGL_rgr";

// Uniform
_unit addUniform "U_B_CombatUniform_mcam_vest";

// Backpack
_unit addBackpack "B_AssaultPack_mcamo";



// PRIMARY WEAPON MAGS 
_unit addMagazines ["20Rnd_762x45_Mag", 14];

// PRIMARY WEAPON
_unit addWeapon "arifle_MXM_Hamr_point_gripod_F";

// PRIMARY WEAPON ATTACHMENTS
_unit addPrimaryWeaponItem "optic_Arco";
_unit addPrimaryWeaponItem "muzzle_snds_B";
_unit addPrimaryWeaponItem "acc_pointer_IR";


// SECONDARY WEAPON MAGS / 40mm Grenades
_unit addMagazines ["30Rnd_9x21_Mag", 2];
//_unit addMagazines ["1Rnd_HE_Grenade_shell", 10];

// SECONDARY WEAPON
_unit addWeapon "hgun_P07_F";

// Grenades
_unit addMagazines ["HandGrenade", 5];

// Items

_unit addWeapon "ItemGPS";
_unit addItem  "FirstAidKit";
_unit addItem  "FirstAidKit";
_unit addItem  "FirstAidKit";

reload gnarfo;

//Save loadout
player setVariable ["magazines", magazines player];
player setVariable ["weapons", weapons player];
player setVariable ["primaryWeaponItems", primaryWeaponItems player];
player setVariable ["secondaryWeaponItems", secondaryWeaponItems player];
player setVariable ["handgunItems", handgunItems player];
player setVariable ["headgear", headgear player];
player setVariable ["uniform", uniform player];
player setVariable ["uniformItems", uniformItems player];
player setVariable ["vest", vest player];
player setVariable ["vestItems", vestItems player];
player setVariable ["backpack", backpack player];
player setVariable ["backpackItems", backpackItems player];
player setVariable ["goggles", goggles player];
