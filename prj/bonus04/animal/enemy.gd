extends KinematicBody2D
var velocity=Vector2()
var collision
var speed=50
var dead=false
func _process(delta):
	velocity=Global.enemy_group_direction
	collision=move_and_collide(velocity*speed*delta)
	if $RayCastLeft.is_colliding():
		Global.enemy_group_direction=Vector2.RIGHT
	if $RayCastRight.is_colliding():
		Global.enemy_group_direction=Vector2.LEFT
func destroy():
	$AudioStreamPlayer2D.play()
	$AnimatedSprite.visible=true
	$AnimatedSprite.play("play")
	$CollisionShape2D.disabled=true
	$Enemy.visible=false
	dead=true
	
func _on_AnimatedSprite_animation_finished():
	queue_free()
