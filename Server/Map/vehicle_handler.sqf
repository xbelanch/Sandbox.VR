
// nos lo cargamos todo. This will delete all vehicles and log vehicles created by clients
[] spawn {
	while{true} do {
		{
			if !(local _x) then {_id = owner _x;{if(owner _x == _id) exitWith {diag_log format["<VEHICLE MONITOR>: POSSIBLE VEHICLE SPAWNED BY %1('%2')",name _x,getplayeruid _x];};} forEach playableUnits;};
			deleteVehicle _x;
		} forEach vehicles;
	};
};