
_createUnit = "O_Soldier_AR_F" createUnit [_spawnPos, _opforSet3, "grnf_currentUnit = this;", 9, "Corporal"];
_staticMG1 = "DSHKM_TK_GUE_EP1" createVehicle [0,0,0];
_staticMG1 setPosASL [4845.69,4589.48,41.9963];
_staticMG1 setDir 225;
grnf_currentUnit moveInGunner _staticMG1;				
grnf_currentUnit doWatch [4808.41,4527.07,5];
_mag = (getArray (configFile >> "CfgVehicles" >> typeOf _staticMG1 >> "Turrets" >> "MainTurret" >> "magazines")) select 0;	
_staticMG1 setVehicleAmmo 0;
{_staticMG1 addMagazine _mag} forEach [1,2,3,4];