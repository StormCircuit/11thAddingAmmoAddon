//this is run once at mission creation to catch anything placed down
{
	//add RHS canister to RHS abrams
	//do a substring match, all RHS abrams begin with rhsusf_m1a

	//this will implicitly not run if a match is not found so we should not get any
	// errors regarding unknown ammo classnames
	if (str typeOf _x find "rhsusf_m1a" != -1) then {
		_x addMagazineTurret ["rhs_mag_M1028", [0], 6];
	};
	
} forEach allMissionObjects "all";

//this is run everytime an object is created and does a check against the entitie's classname
addMissionEventHandler ["EntityCreated", {
	params ["_entity"];

	//add RHS canister to RHS abrams
	//do a substring match, all RHS abrams begin with rhsusf_m1a
	
	//this will implicitly not run if a match is not found so we should not get any
	// errors regarding unknown ammo classnames
	if (str typeOf _entity find "rhsusf_m1a" != -1) then {
		_entity addMagazineTurret ["rhs_mag_M1028", [0], 6];
	};
}];