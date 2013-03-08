
private ["_minDis", "_nearestPos", "_offSet", "_playerPos", "_x", "_y", "_z", "_spawnPos", "_magazines", "_weapons"];
waitUntil {alive player};

//Add custom loadout
removeAllWeapons player;
removeUniform player;
removeVest player;

_magazines = player getVariable "magazines";
_weapons = player getVariable "weapons";
_primaryWeaponItems = player getVariable "primaryWeaponItems"; 
_secondaryWeaponItems = player getVariable "secondaryWeaponItems";
_handgunItems = player getVariable "handgunItems";
_headgear = player getVariable "headgear";
_uniform = player getVariable "uniform";
_uniformItems = player getVariable "uniformItems";
_vest = player getVariable "vest";
_vestItems = player getVariable "vestItems";
_backpack = player getVariable "backpack";
_backpackItems = player getVariable "backpackItems";
_goggles = player getVariable "goggles";

player addUniform _uniform;
player addVest _vest;
player addHeadgear _headgear;
player addGoggles _goggles;
player addBackpack _backpack;
{player addItem _x} forEach _uniformItems;
{player addItem _x} forEach _vestItems;
{player addMagazine _x} forEach _magazines;
{player addWeapon _x} forEach _weapons;
{player addPrimaryWeaponItem _x} forEach _primaryWeaponItems;
{player addSecondaryWeaponItem _x} forEach _secondaryWeaponItems;
{player addHandgunItem _x} forEach _handgunItems;
{player addItem _x} forEach _backpackItems;

reload player;

//set player to respawn position
if (!isNil "gnrf_zombiesRespawnPos") exitWith {player setPosASL gnrf_zombiesRespawnPos};

_minDis = 10000;
_nearestPos = [];
_offSet = 0;
_playerPos = player getVariable "deathPos";

{
	_pos = _x select 0;
	
	if (typeName _pos == "OBJECT") then 
	{
		_pos = getPos _pos;
	};
		
	_dis = _playerPos distance _pos;
	if (_dis < _minDis) then {_nearestPos = _pos; _offSet = _x select 1; _minDis = _dis};	

} forEach gnrf_respawnInfo;

_x = (_nearestPos select 0) + (_offSet - random(_offSet*2)); 
_y = (_nearestPos select 1) + (_offSet - random(_offSet*2)); 
_z = 0;
_spawnPos = [_x, _y, _z];
if (_offSet != 0) then {_spawnPos = _spawnPos findEmptyPosition [1,20, "Man"]};
player setpos _spawnPos;

[] execVM "extras\debug.sqf";