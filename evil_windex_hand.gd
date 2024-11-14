extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_coords = get_viewport().get_mouse_position();
	var movement_vector = Vector2(mouse_coords.x, mouse_coords.y);
	transform = Transform2D(-45.0, Vector2(0.3, 0.3), 0.0, movement_vector);
	
	
func _input(InputEvent) -> void:
	if InputEvent is InputEventMouseButton and InputEvent.pressed:
		print("snork")
