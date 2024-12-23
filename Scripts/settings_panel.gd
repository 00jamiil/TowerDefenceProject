extends Panel


func _on_back_in_settings_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.

func _ready() -> void:
	$LanguageMenuButton.get_popup().add_item("English")
	$LanguageMenuButton.get_popup().add_item("العربية")
	$LanguageMenuButton.get_popup().connect("id_pressed",Callable(self,"_on_item_pressed"))
	$LanguageMenuButton.text = $LanguageMenuButton.get_popup().get_item_text(Global._language)
	
	pass

func _process(delta: float) -> void:
	$LanguageLabel.text = Global._textLanguageLabel[Global._language]
	
	pass

func _on_item_pressed(id):
	Global._language = $LanguageMenuButton.get_popup().get_item_index(id)
	$LanguageMenuButton.text = $LanguageMenuButton.get_popup().get_item_text(id)
	pass
