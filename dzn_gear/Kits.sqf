// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "CUP_NVG_PVS7" } else { "" }
#define NVG_NIGHT_SCOPE		if (daytime < 9 || daytime > 18) then { "CUP_optic_AN_PVS_4_M16" } else { "" }
#define NVG_NIGHT_AIM		if (daytime < 9 || daytime > 18) then { "CUP_optic_TrijiconRx01_black" } else { "CUP_optic_ACOG_TA01NSN_Black_PIP" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_RU_ITEMS	"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define US_UNI ["CUP_U_B_BDUv2_gloves_dirty_Winter_M81","CUP_U_B_BDUv2_gloves_dirty_Winter","CUP_U_B_BDUv2_gloves_dirty_M81_Winter","CUP_U_B_BDUv2_gloves_M81_Winter"]
#define US_HEAD ["CUP_H_PASGTv2_WDL","CUP_H_PASGTv2_winter","CUP_H_US_patrol_cap_winter","CUP_H_PMC_Beanie_Winter"]
#define US_VEST ["CUP_V_B_PASGT_winter","CUP_V_B_PASGT"]

kit_us_pl = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"tf_rt1523g_green",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A3_black","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","CUP_acc_ANPEQ_2_Flashlight_Black_F","CUP_optic_TrijiconRx01_black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["CUP_muzzle_snds_M9","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_HandFlare_Red",2],["ACE_HandFlare_White",2],["ACE_HandFlare_Green",2],["PRIMARY MAG",3],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShellYellow",2],["SmokeShellBlue",2],["CUP_30Rnd_556x45_Stanag_Tracer_Red",4]]]
];
kit_us_sl = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"tf_rt1523g_green",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A3_black","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","CUP_acc_ANPEQ_2_Flashlight_Black_F","CUP_optic_TrijiconRx01_black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["CUP_muzzle_snds_M9","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_HandFlare_Red",2],["ACE_HandFlare_White",2],["ACE_HandFlare_Green",2],["PRIMARY MAG",4],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShellYellow",2],["SmokeShellBlue",2],["CUP_30Rnd_556x45_Stanag_Tracer_Red",4]]]
];
kit_us_ar = [
	["<EQUIPEMENT >>  ",US_UNI,"CUP_V_B_PASGT_winter","CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_m249_pip1","CUP_200Rnd_TE4_Green_Tracer_556x45_M249",["","","CUP_optic_compm2_low",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["CUP_muzzle_snds_M9","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2],[NVG_NIGHT_SCOPE,1]]]
];
kit_us_gr = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A1_BUIS_GL","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","CUP_acc_ANPEQ_2_grey",NVG_NIGHT_AIM,""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",5],["CUP_1Rnd_HE_M203",10]]],
	["<BACKPACK ITEMS >> ",[[NVG_NIGHT_SCOPE,1],["ACE_Clacker",1],["DemoCharge_Remote_Mag",3],["PRIMARY MAG",3]]]
];
kit_us_ftl = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A3_black","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","CUP_acc_ANPEQ_2_Flashlight_Black_F","CUP_optic_ACOG_TA01NSN_Black_PIP",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",3],["HandGrenade",3],["SmokeShellBlue",2],["PRIMARY MAG",3],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[[NVG_NIGHT_SCOPE,1],["CUP_30Rnd_556x45_Stanag_Tracer_Red",4],["PRIMARY MAG",3]]]
];
kit_us_r = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A3_black","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","CUP_acc_ANPEQ_2_Flashlight_Black_F",NVG_NIGHT_AIM,""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Green_Tracer_556x45_M249",1],[NVG_NIGHT_SCOPE,1],["ACE_Clacker",1],["DemoCharge_Remote_Mag",3]]]
];
kit_us_amg = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A3_black","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","CUP_acc_ANPEQ_2_Flashlight_Black_F","CUP_optic_ACOG_TA01NSN_Black_PIP",""]],
	["<LAUNCHER WEAPON >>  ","dzn_MG_Tripod_M122A1_M240Mount_Carry","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",9],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",4],[NVG_NIGHT_SCOPE,1]]]
];
kit_us_mg = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M240","CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",["","","CUP_optic_ElcanM145_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["CUP_muzzle_snds_M9","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3],[NVG_NIGHT_SCOPE,1]]]
];
kit_us_mm = [
	["<EQUIPEMENT >>  ",US_UNI,US_VEST,"CUP_B_USMC_MOLLE_WDL",US_HEAD,"CUP_PMC_Facewrap_Winter"],
	["<PRIMARY WEAPON >>  ","rhs_weap_sr25","CUP_20Rnd_762x51_B_M110",["rhsusf_acc_SR25S","CUP_acc_ANPEQ_2_grey","CUP_optic_LeupoldMk4","CUP_bipod_Harris_1A2_L_BLK"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",10],["HANDGUN MAG",4],[NVG_NIGHT_SCOPE,1]]]
];
kit_us_cargo = [
	[["rhs_weap_m72a7",4]],
	[["CUP_30Rnd_556x45_Stanag",25],["CUP_20Rnd_762x51_B_M110",15],["CUP_200Rnd_TE4_Green_Tracer_556x45_M249",15],["HandGrenade",15],["CUP_1Rnd_HE_M203",30],["SmokeShellYellow",10],["SmokeShellRed",10],["SmokeShellBlue",10],["CUP_30Rnd_556x45_Stanag_Tracer_Red",10],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",15]],
	[["ACE_fieldDressing",15],["ACE_packingBandage",15],["ACE_elasticBandage",15],["CUP_H_PASGTv2_WDL",9]],
	[["CUP_B_USMC_MOLLE_WDL",9]]
];
#define RU_UNIFORM ["CUP_U_O_RUS_VSR93_worn_gloves_MSV","CUP_U_O_RUS_VSR98_worn_gloves_MSV"]
kit_ru_random = [
	"kit_ru_r"
	,"kit_ru_mg"
	,"kit_ru_r"
	,"kit_ru_gr"
	,"kit_ru_at"
	,"kit_ru_r"
	,"kit_ru_lat"
	,"kit_ru_r"
	,"kit_ru_mm"
];
kit_ru_gr = [
	["<EQUIPEMENT >>  ",RU_UNIFORM ,"CUP_V_RUS_6B3_1","rhs_sidor","CUP_H_RUS_SSH68_cover_vsr93",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_RU_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",6],["CUP_1Rnd_HE_GP25_M",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_r = [
	["<EQUIPEMENT >>  ",RU_UNIFORM ,"CUP_V_RUS_6B3_2","","CUP_H_RUS_SSH68_cover_vsr93",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_RU_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_mm = [
	["<EQUIPEMENT >>  ",RU_UNIFORM ,"CUP_V_RUS_6B3_1","","CUP_H_RUS_SSH68_cover_vsr93",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_RU_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["CUP_1Rnd_HE_GP25_M",8],["PRIMARY MAG",14]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ru_mg = [
	["<EQUIPEMENT >>  ",RU_UNIFORM ,"CUP_V_RUS_6B3_2","rhs_sidor","CUP_H_RUS_SSH68_cover_vsr98",""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_RU_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1]]]
];
kit_ru_at = [
	["<EQUIPEMENT >>  ",RU_UNIFORM ,"CUP_V_RUS_6B3_2","rhs_rpg_empty","CUP_H_RUS_SSH68_cover_vsr93",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","CUP_optic_PGO7V3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_RU_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",3]]]
];
kit_ru_lat = [
	["<EQUIPEMENT >>  ",RU_UNIFORM ,"CUP_V_RUS_6B3_Flora_2","","CUP_H_RUS_SSH68_cover_vsr98",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_RU_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
