extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dialog = Dialogic.start("pre-date-timeline")
	add_child(dialog)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
