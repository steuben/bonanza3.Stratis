alpha = group steuben;
steuben setGroupID ["BONANZA-3-ALPHA","GroupColor4"];

//steuben loadout
_unit = steuben;
removeAllWeapons _unit;


// NVG's to Inventory
_unit unassignItem "NVGoggles";
_unit removeItem "NVGoggles";


// Helmet / Soft Cover
_unit addHeadgear "H_Booniehat_mcamo";

// Carrier / Chestrig / Vest
_unit addVest "V_PlateCarrierGL_rgr";

// Uniform
_unit addUniform "U_B_CombatUniform_mcam_vest";

// Backpack
//_unit addBackpack "B_AssaultPack_mcamo";
_unit addBackpack "B_Kitbag_cbr";



// PRIMARY WEAPON MAGS 
_unit addMagazines ["FHQ_30Rnd_556x45_Stanag_Tracer_Red", 12];

// PRIMARY WEAPON
_unit addWeapon "FHQ_M4A1_M203_TAN";

// PRIMARY WEAPON ATTACHMENTS
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "acc_pointer_IR";


// SECONDARY WEAPON MAGS / 40mm Grenades
_unit addMagazines ["30Rnd_9x21_Mag", 2];
_unit addMagazines ["1Rnd_HE_Grenade_shell", 5];

// SECONDARY WEAPON
_unit addWeapon "hgun_P07_F";

// Grenades & splosives
_unit addMagazines ["HandGrenade", 6];
_unit addMagazines ["SatchelCharge_Remote_Mag", 3];

// Items

_unit addWeapon "Binocular";
_unit addWeapon "ItemGPS";
_unit addItem  "FirstAidKit";
_unit addItem  "FirstAidKit";
_unit addItem  "FirstAidKit";

reload steuben;

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


