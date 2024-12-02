extends Area2D
signal coin_collected

var collected = false
@onready var hud = $"../../../HUD"

func _on_body_entered(_body):
	GameDataHolder.LoadFile();
	if not collected:
		collected = true
		$AnimatedSprite2D.play("Got")
		#$HUD._add_coin()
		emit_signal("coin_collected")
		#print("player body found!")

func _on_animated_sprite_2d_animation_finished():
	queue_free()
