extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("F4"):
		if DisplayServer.window_get_mode()==DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	
	if Input.is_action_just_pressed("ui_accept"):
		if Global._language == 0:
			Global._language = 1;
		else:
			Global._language = 0;
	
	$PlayButton.text = Global._textPlayButton[Global._language];
	$SettingsButton.text = Global._textSettingsButton[Global._language];
	$ExitButton.text = Global._textExitButton[Global._language];
	
	
	pass

func _on_play_button_mouse_entered() -> void:				#Play button Hover
	$PlayButton.scale = Vector2(1.25, 1.25)					#Play button Hover
	$PlayButton.add_theme_font_size_override("font_size",48)
	pass													#Play button Hover
	
func _on_play_button_mouse_exited() -> void:				#Play button Exit Hover
	$PlayButton.scale = Vector2(1, 1)						#Play button Exit Hover
	$PlayButton.add_theme_font_size_override("font_size",40)
	pass													#Play button Exit Hover

func _on_settings_button_mouse_entered() -> void:			#Settings button Hover
	$SettingsButton.scale = Vector2(1.25, 1.25)				#Settings button Hover
	$SettingsButton.add_theme_font_size_override("font_size",48)
	pass # Replace with function body.						#Settings button Hover

func _on_settings_button_mouse_exited() -> void:			#Settings button Exit Hover
	$SettingsButton.scale = Vector2(1, 1)					#Settings button Exit Hover
	$SettingsButton.add_theme_font_size_override("font_size",40)			#Settings button Exit Hover
	pass # Replace with function body.						#Settings button Exit Hover

func _on_exit_button_mouse_entered() -> void:				#Exit button Hover
	$ExitButton.scale = Vector2(1.25, 1.25)					#Exit button Hover
	$ExitButton.add_theme_font_size_override("font_size",48) # Replace with function body.						#Exit button Hover

func _on_exit_button_mouse_exited() -> void:				#Exit button Exit Hover
	$ExitButton.scale = Vector2(1, 1)						#Exit button Exit Hover
	$ExitButton.add_theme_font_size_override("font_size",40) # Replace with function body.						#Exit button Exit Hover

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Testing clicks.tscn")
	pass # Replace with function body.


func _on_settings_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SettingsScene.tscn")
	pass # Replace with function body.

func _on_exit_button_pressed() -> void:
	get_tree().quit()										#Quit the game when Exit is pressed (Might add a conform screen)
	pass # Replace with function body.
