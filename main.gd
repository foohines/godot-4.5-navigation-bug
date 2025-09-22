extends Node2D

@onready var nav_region: NavigationRegion2D = $NavigationRegion2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	nav_region.bake_navigation_polygon()
