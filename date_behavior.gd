extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if InputEvent is InputEventMouseMotion:
		var mousePosition = get_viewport().get_mouse_position();
		var movementVector = Vector2(1.0, 1.2);
		transform = Transform2D(0.0, movementVector);
