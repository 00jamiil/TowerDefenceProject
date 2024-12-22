extends Label

var is_hovered = false

func _ready():
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))

func _on_mouse_entered():
	is_hovered = true
	print("Mouse is over the label")

func _on_mouse_exited():
	is_hovered = false
	print("Mouse left the label")
