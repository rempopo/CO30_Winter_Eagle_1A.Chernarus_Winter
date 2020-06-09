
/* *********** This array defines detailed properties of zones ************************** */
[
	"patrol_recce" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"patrol_west" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"patrol_east" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"main_town" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			2, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"patrol_se" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"reinf" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["CUP_O_Kamaz_RU", "Vehicle Advance", ""]
				,["O_R_Soldier_LAT_F", [5,"Driver"], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
	 /* (OPTIONAL) Activation condition */
	,{ [TRG_1, "", "> 0"] call dzn_fnc_ccPlayers  }
]
,
[
	"tgt_patrol" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			2, /* Groups quantity */
			/* Units */
			[
				["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
				,["O_R_Soldier_LAT_F", [], "kit_ru_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
