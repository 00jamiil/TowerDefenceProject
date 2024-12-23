extends Panel
var number = "0"
func _on_increase_button_pressed() -> void:
	
	number=int(number)+1
	$NumberScoreLabel.text=str(number)
	pass # Replace with function body.

func _on_decrease_button_pressed() -> void:
	number=int(number)-1
	$NumberScoreLabel.text=str(number)
	pass # Replace with function body.

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.
