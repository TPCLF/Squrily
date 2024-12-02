extends Control

func _ready() -> void:
	get_node("Button1").grab_focus();

func _on_button_1_pressed():
	load_new_scene()
	#print("Button1 is getting pressed")

func _on_button_2_pressed():
	print("Button2 is getting pressed")

func _on_button_3_pressed():
	#print("Button3 is getting pressed")
	get_tree().quit()
	
func load_new_scene():
	var scenetree = get_tree()
	var new_scene = "res://Scenes/LEVEL1.tscn"
	scenetree.change_scene_to_file(new_scene)
	#print("scene loaded")
