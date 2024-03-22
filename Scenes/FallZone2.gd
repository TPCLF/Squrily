extends Area2D
@onready var particle_scene = preload("res://Scenes/sparks.tscn")
var particle_instance = null
#var scene_loader = SceneLoader.new()
func _on_body_entered(_body):
	pass
	#if particle_instance == null:
		#print("This worked. Wheres my sparks???")
		#var instance = particle_scene
		#add_child(instance)
		#particle_instance.global_position = global_position
func _on_body_exited(_body):
	if particle_instance != null:
		particle_instance.queue_free()
		particle_instance = null
