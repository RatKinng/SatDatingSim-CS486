extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_br_particle_area_area_entered(area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/BR_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	
	# Resets the particles to their starting position
	get_node("../../../../../Area2D/AmppsBetter/UR_particle_spawner").reset(4000.0, 2600.0);
	#pass

func _on_ur_particle_area_area_entered(area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/UR_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	
	# Resets the particles to their starting position
	get_node("../../../../../Area2D/AmppsBetter/UR_particle_spawner").reset(4000.0, -2600.0);
	#pass


func _on_bl_particle_area_area_entered(area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/BL_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	
	# Resets the particles to their starting position
	get_node("../../../../../Area2D/AmppsBetter/BL_particle_spawner").reset(-4000.0, -2600.0);


func _on_ul_particle_area_area_entered(area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/UL_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	
	# Resets the particles to their starting position
	get_node("../../../../../Area2D/AmppsBetter/UL_particle_spawner").reset(-4000.0, 2600.0);
	
func _on_um_particle_area_area_entered(area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/UM_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	
	# Resets the particles to their starting position
	get_node("../../../../../Area2D/AmppsBetter/UM_particle_spawner").reset(-2000.0, 2600.0);

func _on_bm_particle_area_area_entered(area: Area2D) -> void:
	#get_node("../../../../../Area2D/AmppsBetter/BM_particle_spawner").queue_free();
	#get_node(".").set_deferred("disabled", true);
	
	# Resets the particles to their starting position
	get_node("../../../../../Area2D/AmppsBetter/BM_particle_spawner").reset(2000.0, 2600.0);
