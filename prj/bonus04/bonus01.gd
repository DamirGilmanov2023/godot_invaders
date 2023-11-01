extends CanvasLayer
var p_player=preload("res://bonus01/p_player/p_player.tscn")
var p_alien=preload("res://bonus01/p_alien/p_alien.tscn")
var flag_fire_player:bool
var flag_fire_alien:bool
var health
var perem=0
func _ready():
	health=Global.health

func _process(delta):
	if flag_fire_player:
		flag_fire_player=false
		var p=p_player.instance()
		p.position=$rocket.position
		p.position.y-=50
		add_child(p)
	if flag_fire_alien:
		flag_fire_alien=false
		var pa=p_alien.instance()
		var m=get_tree().get_nodes_in_group("enemy_group")
		if m.size()!=0:
			var mm=m[randi()%m.size()]
			if mm.position!=null and mm.dead!=true:
				pa.position=mm.global_position
				add_child(pa)
				$AudioStreamPlayer2D.play()
	if Global.health==0 and perem==0:
		perem+=1
		$rocket.dead()
		$Timer_fire_player.stop()
		$Timer_fire_alien.stop()
		$AudioStreamPlayer2D2.play()
		
	if health>Global.health and perem==0:
		$rocket.damage()
	health=Global.health


func _on_Timer_fire_player_timeout():
	flag_fire_player=true
	$Timer_fire_player.start()

func _on_Timer_fire_alien_timeout():
	flag_fire_alien=true
	$Timer_fire_alien.start()
