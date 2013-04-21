
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
player setVariable ["items", items player];

copyToClipboard format ["%1 ### %2", magazines player, weapons player];

hintSilent "Loadout saved";


