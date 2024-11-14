extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_br_particle_area_area_entered(area: Area2D) -> void:
	get_node("../../../../../Area2D/AmppsBetter/BR_particle_spawner").queue_free();
	get_node(".").set_deferred("disabled", true);


func _on_ur_particle_area_area_entered(area: Area2D) -> void:
	get_node("../../../../../Area2D/AmppsBetter/UR_particle_spawner").queue_free();
	get_node(".").set_deferred("disabled", true);


func _on_bl_particle_area_area_entered(area: Area2D) -> void:
	get_node("../../../../../Area2D/AmppsBetter/BL_particle_spawner").queue_free();
	get_node(".").set_deferred("disabled", true);


func _on_ul_particle_area_area_entered(area: Area2D) -> void:
	get_node("../../../../../Area2D/AmppsBetter/UL_particle_spawner").queue_free();
	get_node(".").set_deferred("disabled", true);
	
