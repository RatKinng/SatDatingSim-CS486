extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	Turn off collision area because it is in by default and attached to the sprayer
	#get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var mouse_coords = get_global_mouse_position();
	var movement_vector = Vector2(mouse_coords.x, mouse_coords.y);
	transform = Transform2D(-45.0, Vector2(0.3, 0.3), 0.0, movement_vector);
	
	
func _input(InputEvent) -> void:
	if InputEvent is InputEventMouseButton and InputEvent.pressed:
		# Spray out some particles
		$spray.emitting = true;
		# Turn on the collision area
		#get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", false);
	#get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
