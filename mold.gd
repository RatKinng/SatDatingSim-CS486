extends CPUParticles2D

#var your_date = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var y_to_parent = get_position().y # Distance from parent to particles in y
	var x_to_parent = get_position().x # Distance from parent to particles in x
	var x_movement;
	var y_movement;
	
#	Determine which direction the electrostatic is going to move
	if(x_to_parent < 0):
		x_movement = x_to_parent + 1;
	else:
		x_movement = x_to_parent - 1;
		
	if(y_to_parent < 0):
		y_movement = y_to_parent + 1;
	else:
		y_movement = y_to_parent - 1;
	
#	Create the attack pattern
	var attack_vec = Vector2(x_movement, y_movement)
	if(y_to_parent != 0):
		transform = Transform2D(0.0, attack_vec);


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("fart")
