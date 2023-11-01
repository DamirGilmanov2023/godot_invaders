extends KinematicBody2D

var velocity=Vector2()
var speed=300
var cl_pos
func _process(delta):
	velocity=Vector2()
	if Input.is_action_pressed("ui_left"):
		velocity.x-=2
	elif Input.is_action_pressed("ui_right"):
		velocity.x+=2
	if Input.is_action_pressed("mouse_left"):
		cl_pos=get_global_mouse_position()
	else:
		cl_pos=position
	if cl_pos.x>position.x and abs(cl_pos.x-position.x)>10:
		velocity.x+=2
	elif cl_pos.x<position.x and abs(cl_pos.x-position.x)>10:
		velocity.x-=2
	velocity.x=velocity.x*speed
	velocity=move_and_slide(velocity)
func damage():
	$AnimatedSpriteDamage.visible=true
	$AnimatedSpriteDamage.play("play")
	$AudioStreamPlayer2D.play()
func dead():
	$Rocket.visible=false
	$AnimatedSpriteDead.visible=true
	$AnimatedSpriteDead.play("play")

func _on_AnimatedSpriteDamage_animation_finished():
	$AnimatedSpriteDamage.stop()
	$AnimatedSpriteDamage.visible=false

func _on_AnimatedSpriteDead_animation_finished():
	$AnimatedSpriteDead.stop()
