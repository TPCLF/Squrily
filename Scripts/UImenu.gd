extends Control

var menu_visible = false

func _ready():
	hide() # Hide my menu

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle_menu()
# Function to toggle the UI menu
func toggle_menu():
	menu_visible = !menu_visible # Toggle visibility
	if menu_visible:
		show()
		Engine.time_scale = 0.0;
		get_node("Button2").grab_focus();
	else:
		hide()
		Engine.time_scale = 1.0;
func _on_button_pressed():
	get_tree().paused = false
	load_new_scene()
func load_new_scene():
	var scenetree = get_tree()
	Engine.time_scale = 1.0;
	var new_scene = "res://Scenes/UImenu1.tscn"
	scenetree.change_scene_to_file(new_scene)
	#print("scene loaded")
func _on_button_2_pressed():
	get_tree().paused = false
	toggle_menu()
