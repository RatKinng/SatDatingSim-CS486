extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_br_particle_area_area_entered(_area: Area2D) -> void:
	# Resets the particles to their starting position
	if(_area.name == "spray_particle_area"):
		get_node("../../../../../Area2D/AmppsBetter/BR_particle_spawner").reset(5400, 3000);
		# Turn off the collider
		get_node("../../../spray/spray_particle_area/particleCollide").set_deferred("disabled", true);

func _on_ur_particle_area_area_entered(_area: Area2D) -> void:
	# Resets the particles to their starting position
	if(_area.name == "spray_particle_area"):
		get_node("../../../../../Area2D/AmppsBetter/UR_particle_spawner").reset(5400, -3200);
		get_node("../../../spray/spray_particle_area/particleCollide").set_deferred("disabled", true);


func _on_bl_particle_area_area_entered(_area: Area2D) -> void:
	# Resets the particles to their starting position
	if(_area.name == "spray_particle_area"):
		get_node("../../../../../Area2D/AmppsBetter/BL_particle_spawner").reset(-5300, 3000);
		get_node("../../../spray/spray_particle_area/particleCollide").set_deferred("disabled", true);


func _on_ul_particle_area_area_entered(_area: Area2D) -> void:
	# Resets the particles to their starting position
	if(_area.name == "spray_particle_area"):
		get_node("../../../../../Area2D/AmppsBetter/UL_particle_spawner").reset(-5300, -3200);
		get_node("../../../spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
		
	
func _on_um_particle_area_area_entered(_area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/UM_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	#print(_area.name)
	# Resets the particles to their starting position
	if(_area.name == "spray_particle_area"):
		get_node("../../../../../Area2D/AmppsBetter/UM_particle_spawner").reset(0, -3200);
		get_node("../../../spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
	# Turn on the pain shader
	#get_node("../../../../../Area2D/OuchieShader").oof_owie_ouch(true);

func _on_bm_particle_area_area_entered(_area: Area2D) -> void:
# Resets the particles to their starting position
	if(_area.name == "spray_particle_area"):
		get_node("../../../../../Area2D/AmppsBetter/BM_particle_spawner").reset(0, 3100);
		get_node("../../../spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
