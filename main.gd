extends Node2D

@onready var agent: NavigationAgent2D = $Player/NavigationAgent2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _unhandled_input(event: InputEvent) -> void:
	if (event is InputEventMouseButton && event.is_pressed() && (event as InputEventMouseButton).button_index == MOUSE_BUTTON_LEFT):
		agent.target_position = get_global_mouse_position()
