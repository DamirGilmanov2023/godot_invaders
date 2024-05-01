extends Node2D
var p_alien=preload("res://bonus04/p_alien/p_alien.tscn")
var mass_enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	mass_enemy=[$enemy,$enemy2,$enemy3,$enemy4,$enemy5,$enemy6,$enemy7,$enemy8,$enemy9,$enemy10,
					$enemy11,$enemy12,$enemy13,$enemy14,$enemy15,$enemy16,$enemy17,$enemy18,$enemy19,$enemy20,
					$enemy21,$enemy22,$enemy23,$enemy24,$enemy25,$enemy26,$enemy27,$enemy28,$enemy29,$enemy30,
					$enemy31,$enemy32,$enemy33,$enemy34,$enemy35,$enemy36,$enemy37,$enemy38,$enemy39,$enemy40]
	for m in mass_enemy:
		$Tween.interpolate_property(m,'position',Vector2(m.position.x,m.position.y-1000),m.position,2,Tween.TRANS_QUINT,Tween.EASE_IN_OUT)	
		$Tween.start()
	#$Tween.interpolate_property($enemy36,'position',Vector2(0,0),$enemy36.position,2,Tween.TRANS_QUINT,Tween.EASE_IN_OUT)
