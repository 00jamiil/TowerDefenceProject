extends Panel

var menu = 1;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down") and menu < 3:
		menu += 1;
	if Input.is_action_just_pressed("ui_up") and menu > 1:
		menu -= 1;
	
	
	
	pass
