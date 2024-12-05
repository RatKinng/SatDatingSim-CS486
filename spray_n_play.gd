extends Node2D

@export var tempArea_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var sprayArea = tempArea_scene.instantiate()
		sprayArea.global_position = get_global_mouse_position()
		add_child(sprayArea)
