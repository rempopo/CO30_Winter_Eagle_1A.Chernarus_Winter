/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		a) array in format [YYYY,MM,DD,HH,mm] (e.g. [2012, 12, 31, 12, 45])
 *		b) date (to use editor set date)
 */
private _date = [
	date
	, "par_daytime" call BIS_fnc_getParamValue
	/* Расширеные опции: ["day","night","morning","midday","evening","midnight","random"] */
	, ["day","night","morning","midday","evening","midnight","random"] 
] call dzn_fnc_randomizeTime;

/*
 *	Date
 */
setDate _date;
MissionDate = date;
publicVariable "MissionDate";

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];

/*
 *	Mission custom server code goes here:
 */
 
private _asset = [AssetLogic, "objects"] call dzn_fnc_selectRandomAsset;
private _assetObjects = synchronizedObjects _asset;
TGT = _assetObjects # (_assetObjects findIf { typeof _x == "rhs_2s1_tv" });
publicVariable "TGT";

[] spawn {
	waitUntil {!isNil "dzn_dynai_initialized" && { dzn_dynai_initialized } };
	[tgt_patrol, TGT] call dzn_fnc_dynai_moveZone;
	[tgt_patrol, TGT] call dzn_fnc_dynai_moveZone;
	tgt_patrol call dzn_fnc_dynai_activateZone;
	tgt_patrol call dzn_fnc_dynai_activateZone;
	sleep 60;
	[getPosATL Start1, getPosATL End1, 100, "FULL", "CUP_B_AH64D_DL_USA", west] call BIS_fnc_ambientFlyby;
	waitUntil {!alive SPOT};
	[[west, "HQ"], "Eagle, this is HQ, enemy artillery is blind now. Mortar support is available, I repeat, Steelrain-1-1 is now online, out"] remoteExec ["sideChat", 0];
	sleep 10;
	[mortarchat, "Eagle, this is Steelrain-1-1, thank you, we will be ready in few minutes, send us your coordinates, out"] remoteExec ["sideChat", 0];
};