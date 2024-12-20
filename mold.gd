extends CPUParticles2D

var movement_constant = 3.0; # Will drastically vary on speed changes depending on whether my laptop is plugged in or not
var allDone = false;
var alreadyWon = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

func _process(_delta: float) -> void:
	if(allDone == true):
		movement_constant = 0.0;

		
	var loseColliderArea = get_parent().get_parent().get_node("LoseCollider");
	var y_to_parent = loseColliderArea.get_position().y; # Y coordinate of the lose collision area
	var x_to_parent = loseColliderArea.get_position().x; # X coordinate of the lose collision area
	var mold_y = get_position().y;						 # Y coordinate of the electrostatic instance
	var mold_x = get_position().x;						 # X coordinate of the electrostatic instance
	var x_movement;
	var y_movement;
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


func reset(x_position: int, y_position: int) -> void:
	if(allDone == true):
		# If you survived, clear the particles
		queue_free();
	var reset_vec = Vector2(x_position, y_position)
	transform = Transform2D(0.0, reset_vec);
	movement_constant += 0.1; # Up the difficulty ever so slightly


func _on_area_2d_area_entered(area: Area2D) -> void:
	# shhould be bad particle interaction with date
	
	# Turn on the pain shader
	get_node("../../../Area2D/OuchieShader").oof_owie_ouch(true);


func _on_lose_area_area_entered(area: Area2D) -> void:
	# The static gets to the lose area, and you lose the game!
	var LAW = preload("res://node_2d.tscn")
	if(allDone == true):
		queue_free();
		return


func _on_area_2d_area_exited(area: Area2D) -> void:
	get_node("../../../Area2D/OuchieShader").oof_owie_ouch(false); # Turn off the shader if static leaves


func _on_timer_timeout():
	# You defended your date! You win the game!
	if(alreadyWon ==  false):
		var dialog = Dialogic.start("winner_timeline")
		add_child(dialog)
		allDone = true;
		alreadyWon = true;
