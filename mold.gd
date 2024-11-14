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
	var movement = abs(y_to_parent / x_to_parent);		# Should be a direct path to the collision area

	if(mold_x < 0):
		x_movement = mold_x + (1 - movement);
	else:
		x_movement = mold_x - (1 - movement);
		
	if(mold_y < 0):
		y_movement = mold_y + movement;
	else:
		y_movement = mold_y - movement;

	
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


func _on_spray_particle_area_area_entered(area: Area2D) -> void:
	#emitter.queue_free();
	print($".")
	pass
