extends CPUParticles2D

#var your_date = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

#var done = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#Dialogic.signal_event.connect(_date_ended)
#
	#if(done == false):
		#pass
	#else:
		#var y_to_parent = get_position().y # Distance from parent to particles in y
		#var x_to_parent = get_position().x # Distance from parent to particles in x
		
	var loseColliderArea = get_parent().get_parent().get_node("LoseCollider");
	var y_to_parent = loseColliderArea.get_position().y; # Y coordinate of the lose collision area
	var x_to_parent = loseColliderArea.get_position().x; # X coordinate of the lose collision area
	var mold_y = get_position().y;						 # Y coordinate of the electrostatic instance
	var mold_x = get_position().x;						 # X coordinate of the electrostatic instance
	var x_movement;
	var y_movement;
	var movement_constant = 4.0;
	var movement = abs(y_to_parent / x_to_parent);		# Should be a direct path to the collision area

	if(mold_x < 0):
		x_movement = mold_x + movement_constant*(1 - movement);
	else:
		x_movement = mold_x - movement_constant*(1 - movement);
		
	if(mold_y < 0):
		y_movement = mold_y + movement_constant*movement;
	else:
		y_movement = mold_y - movement_constant*movement;

	
#	Create the attack pattern
	var attack_vec = Vector2(x_movement, y_movement)
	
	if(mold_y != 0) or (mold_x != 0):
		transform = Transform2D(0.0, attack_vec);

#func _date_ended() -> void:
	#done = true


func _on_particle_area_area_entered(area: Area2D) -> void:
	#print($".")
	#print($"BR_particle_area".name)
	#if(area.name == "BR_particle_area"):
	#queue_free();
	pass

func reset(x_position: int, y_position: int) -> void:
	var reset_vec = Vector2(x_position, y_position)
	transform = Transform2D(0.0, reset_vec);

func _on_spray_particle_area_area_entered(area: Area2D) -> void:
	#emitter.queue_free();
	print($".")
	pass

# What the date needs to do if it gets shocked
func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if(area.name != "spray_particle_area"):
		# Turn on the pain shader
		get_node("../../../Area2D/OuchieShader").oof_owie_ouch(true);


func _on_area_2d_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if(area.name != "spray_particle_area"):
		# Turn on the pain shader
		get_node("../../../Area2D/OuchieShader").oof_owie_ouch(false);
