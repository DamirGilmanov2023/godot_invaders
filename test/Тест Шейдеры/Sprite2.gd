extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var shader_param=0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mp=get_global_mouse_position()
	if get_rect().has_point(to_local(mp)):
		if shader_param<1:
			shader_param+=0.01
			material.set_shader_param("out_control",shader_param)
	else:
		if shader_param>0:
			shader_param-=0.01
			material.set_shader_param("out_control",shader_param)
		
	print(shader_param)
	
