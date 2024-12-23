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
