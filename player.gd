extends Node2D

@onready var agent: NavigationAgent2D = $NavigationAgent2D

var target: Vector2 = Vector2.ZERO
var movement_speed = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _unhandled_input(event: InputEvent) -> void:
	if (event is InputEventMouseButton && event.is_pressed() && (event as InputEventMouseButton).button_index == MOUSE_BUTTON_LEFT):
		target = get_global_mouse_position()
		agent.target_position = target

func _physics_process(delta):
	if agent.is_navigation_finished():
		return

	var velocity = global_position.direction_to(agent.get_next_path_position()) * movement_speed
	position += (velocity * delta)
