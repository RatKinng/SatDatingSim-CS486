extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Create a 2-second timer, which is the collision area's lifespan
	await get_tree().create_timer(2.0).timeout
	emit_signal("area_entered")
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
