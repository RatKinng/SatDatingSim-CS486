extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dialog = Dialogic.start("hallway-timeline")
	add_child(dialog)
	pass # Replace with function body.

var done = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Dialogic.signal_event.connect(_date_ended)

	if(done == false):
		pass
	else:
		$BR_particle_spawner.emitting = true
		$BL_particle_spawner.emitting = true
		$UR_particle_spawner.emitting = true
		$UL_particle_spawner.emitting = true
	pass



func _date_ended() -> void:
	done = true
