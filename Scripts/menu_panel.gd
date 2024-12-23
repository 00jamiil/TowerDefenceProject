
#
#var menu = 3;
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#if Input.is_action_just_pressed("ui_down") and menu < 3:
		#menu += 1;
	#if Input.is_action_just_pressed("ui_up") and menu > 1:
		#menu -= 1;
	#if $PlayLabel.get_rect().has_point(get_global_mouse_position()):
		#menu = 1;
#
#
	#if menu == 1:
		#$PlayLabel.scale = Vector2(1.5,1)
	#else:
		#$PlayLabel.scale = Vector2(1,1)
	#
	#if menu == 2:
		#$SettingsLabel.scale = Vector2(1.5,1)
	#else:
		#$SettingsLabel.scale = Vector2(1,1)
	#
	#if menu == 3:
		#$ExitLabel.scale = Vector2(1.5,1)
	#else:
		#$ExitLabel.scale = Vector2(1,1)
	#
	#pass

#------------------------This is my new Code for the buttons ---------------------------------
extends Panel

func _on_play_button_mouse_entered() -> void:				#Play button Hover
	$PlayButton.scale = Vector2(1.25, 1.25)					#Play button Hover
	$PlayButton.position = Vector2(132-12, 64-8.625)		#Play button Hover
	pass													#Play button Hover
	
func _on_play_button_mouse_exited() -> void:				#Play button Exit Hover
	$PlayButton.scale = Vector2(1, 1)						#Play button Exit Hover
	$PlayButton.position = Vector2(132, 64)					#Play button Exit Hover
	pass													#Play button Exit Hover

func _on_settings_button_mouse_entered() -> void:			#Settings button Hover
	$SettingsButton.scale = Vector2(1.25, 1.25)				#Settings button Hover
	$SettingsButton.position = Vector2(81.5-20.375, 192-6)	#Settings button Hover
	pass # Replace with function body.						#Settings button Hover

func _on_settings_button_mouse_exited() -> void:			#Settings button Exit Hover
	$SettingsButton.scale = Vector2(1, 1)					#Settings button Exit Hover
	$SettingsButton.position = Vector2(81.5, 192)			#Settings button Exit Hover
	pass # Replace with function body.						#Settings button Exit Hover

func _on_exit_button_mouse_entered() -> void:				#Exit button Hover
	$ExitButton.scale = Vector2(1.25, 1.25)					#Exit button Hover
	$ExitButton.position = Vector2(132-11, 320-10)			#Exit button Hover
	pass # Replace with function body.						#Exit button Hover

func _on_exit_button_mouse_exited() -> void:				#Exit button Exit Hover
	$ExitButton.scale = Vector2(1, 1)						#Exit button Exit Hover
	$ExitButton.position = Vector2(132, 320)				#Exit button Exit Hover
	pass # Replace with function body.						#Exit button Exit Hover

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Testing clicks.tscn")
	pass # Replace with function body.


func _on_settings_button_pressed() -> void:
	
	pass # Replace with function body.

func _on_exit_button_pressed() -> void:
	get_tree().quit()										#Quit the game when Exit is pressed (Might add a conform screen)
	pass # Replace with function body.
