extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$Timer.wait_time Are= 2.0;
	$Timer.start();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_Timer_timeout():
	queue_free();
