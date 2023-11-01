extends AnimatedSprite

func _process(delta):
	get_node(".").frame=Global.health
