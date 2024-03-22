extends Node2D

@onready var projectile = $Projectile

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	projectile.global_position += Vector2(800 * delta, 0)
	#var newProjectile = projectile.instance()
	#add_child(newProjectile)
