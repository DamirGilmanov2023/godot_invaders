extends KinematicBody2D
var velocity=Vector2.DOWN
var speed=200
var collision
func _process(delta):
	collision=move_and_collide(velocity*speed*delta)
	if collision:
		#var collaider=collision.collider
		Global.health-=1
		queue_free()
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
