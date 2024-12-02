extends Area2D
@onready var particle_scene = preload("res://Scenes/sparks.tscn")
var particle_instance = null
#var scene_loader = SceneLoader.new()
func _on_body_entered(_body : Node2D):
	print("Pit detected", _body.name)
	if _body.is_in_group("Blocks"):
		if particle_instance == null:
			print("This worked. Wheres my sparks???")
			var instance = particle_scene.instantiate()
			get_tree().root.add_child(instance)
			instance.global_position = global_position + Vector2(0, 200)
	
		_body.queue_free();
		GameDataHolder.Data.Cubes += 1;
		SceneVars.CollectedBoxes += 1;
	else: #Not a block, probably a player
		print("You died falling in the pit");
		
func _on_body_exited(_body):
	if particle_instance != null:
		particle_instance.queue_free()
		particle_instance = null
