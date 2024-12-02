class_name GameData extends Resource

@export var Coins = 0;
@export var Cubes = 0;
@export var CurrentScenePath : String;

func NewFile():
	Coins = 0;
	Cubes = 0;
	CurrentScenePath = "LEVEL1";
