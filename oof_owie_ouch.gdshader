shader_type canvas_item;

void vertex() {
	//float redLevel = sin(TIME);
	//COLOR = vec4(redLevel,0,0,redLevel);
}

void fragment() {
	float redLevel = sin(TIME * 5.0);
	COLOR = vec4(redLevel,0,0,(redLevel/2.0));
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
