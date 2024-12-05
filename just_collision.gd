extends Node2D

@export var particles = preload("res://particles_n_their_behavior.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(InputEvent) -> void:
	var particle = particles.instantiate();
	if InputEvent is InputEventMouseButton and InputEvent.pressed:
		particle.position = global_position;
		get_parent().add_child(particle);
		await get_tree().create_timer(2.0).timeout
		
