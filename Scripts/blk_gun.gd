class_name TimedTurretEntity 
extends CharacterBody2D
@onready var fire_timer = $Timer
@export var fire_rate: float = 1
var can_fire : bool = true

func _ready():
	fire_timer.wait_time = fire_rate
	fire_timer.start()

func _on_Timer_timeout() -> void:
	print("Time out.")
	set_can_fire()
	fire_bullet()

func fire_bullet() -> void:
	print("BANG!!")
	# Add logic to fire the bullet here

func set_can_fire() -> void:
	can_fire = true
