extends Node2D

@export var lifetime = 10.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	for child in get_children():
		if child is GPUParticles2D:
			child.emitting = true;
	
	await get_tree().create_timer(lifetime).timeout;
	queue_free();

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
