class_name SceneVars extends Node2D

@export var musicPath : String;
@export var timer = 600;

static var CollectedCoins = 0;
static var CollectedBoxes = 0;
static var KilledEnemies = 0;
static var CoinsPercentage = 0;
static var BoxesPercentage = 0;
static var EnemiesPerctange = 0;
var MaxCoins = 0;
var MaxBoxes = 0;
var MaxEnemies = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CollectedBoxes = 0;
	CollectedCoins = 0;
	MaxCoins = get_tree().get_nodes_in_group("Coins").size();
	MaxBoxes  = get_tree().get_nodes_in_group("Blocks").size();
	MaxEnemies  = get_tree().get_nodes_in_group("Enemy").size();
	
	#TODO: Play music and possibly do timer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	CoinsPercentage = (CollectedCoins * 100 / MaxCoins);
	BoxesPercentage = (CollectedBoxes * 100 / MaxBoxes);
	EnemiesPerctange = (KilledEnemies  * 100 / MaxEnemies);
