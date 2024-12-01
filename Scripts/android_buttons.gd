extends Node2D

@export var joystick_path : NodePath;
@export var dpad_path : Array[NodePath]
@export var text_toggle_path : NodePath;

static var UseDpad = false;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#TODO: Get code to detect platform.  Hide this if not Android
	UseDpad = !UseDpad;  #Running this twice so Toggle Button stays the same
	ToggleButton();


func ToggleButton():
	UseDpad = !UseDpad;
	for path in dpad_path:
		get_node(path).visible = UseDpad;
	get_node(joystick_path).visible = !UseDpad;
	
	if UseDpad:
		get_node(text_toggle_path).text = "Use Joystick";
	else:
		get_node(text_toggle_path).text = "Use DPad";

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
