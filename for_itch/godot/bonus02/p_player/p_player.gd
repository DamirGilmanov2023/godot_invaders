extends KinematicBody2D
var collision
var speed=400
func _process(delta):
	collision=move_and_collide(delta*Vector2.UP*speed)
	if collision:
		var collaider=collision.collider
		if collaider.has_method('destroy'):
			collaider.destroy()
		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
