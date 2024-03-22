extends Marker2D
var player
var anchor
# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("/root/L1/PlayerRoot/player2d")
	#if player:
		#print("Player node successfully assigned:", player)
	#else:
		#print("Player node not found or assigned correctly")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var target = player.global_position
	var target_pos_x
	var target_pos_y
	target_pos_x = lerp(global_position.x, target.x, 0.1)
	target_pos_y = lerp(global_position.y, target.y, 0.1)
	global_position = Vector2(target_pos_x, target_pos_y)
