extends CharacterBody2D

var Velocity = Vector2() 
@export var dir = -1
@export var SPEED = 300
#const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	if dir == 1:
		$JUAN.flip_h = true
	$floorCheck.position.x = dir * 16
func _physics_process(delta):
	velocity.y = 100 * SPEED * delta
	velocity.x = SPEED * dir
	if not $floorCheck.is_colliding() and is_on_floor():
		dir = dir * -1
		$JUAN.flip_h = not $JUAN.flip_h
		$floorCheck.position.x = dir * 16
	move_and_slide()
func _on_hit_box_body_entered(body):
	body.bounce()
	$JUAN.play("Squished")
	SPEED = 0
func _on_juan_animation_finished():
	#print("Enemy Died!")
	queue_free()

func _on_attack_body_entered(body):
	
	body.flash()
