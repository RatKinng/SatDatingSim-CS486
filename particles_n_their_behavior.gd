extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("good_particles");
	await get_tree().create_timer(2.0).timeout;
	queue_free();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#func _on_br_particle_area_area_entered(area: Area2D) -> void:
	#print("baby quavier")
