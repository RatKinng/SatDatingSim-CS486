extends CPUParticles2D

#var your_date = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var y_to_parent = get_position().y # Distance from parent to particles in y
	#var x_to_parent = get_position().x # Distance from parent to particles in x
	
	var loseColliderArea = get_parent().get_parent().get_node("LoseCollider");
	var y_to_parent = loseColliderArea.get_position().y; # Y coordinate of the lose collision area
	var x_to_parent = loseColliderArea.get_position().x; # X coordinate of the lose collision area
	var mold_y = get_position().y;						 # Y coordinate of the electrostatic instance
	var mold_x = get_position().x;						 # X coordinate of the electrostatic instance
	var x_movement;
	var y_movement;
	var movement = abs(y_to_parent / x_to_parent);		# Should be a direct path to the collision area

	if(mold_x < 0):
		x_movement = mold_x + 4*(1 - movement);
	else:
		x_movement = mold_x - 4*(1 - movement);
		
	if(mold_y < 0):
		y_movement = mold_y + 4*movement;
	else:
		y_movement = mold_y - 4*movement;

	
#	Create the attack pattern
	var attack_vec = Vector2(x_movement, y_movement)
	if(mold_y != 0) or (mold_x != 0):
		transform = Transform2D(0.0, attack_vec);


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass;


func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	print("fart");
