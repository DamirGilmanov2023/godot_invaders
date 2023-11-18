extends Node2D
var p_alien=preload("res://bonus02/p_alien/p_alien.tscn")
var mass_enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	mass_enemy=[$enemy,$enemy2,$enemy3,$enemy4,$enemy5,$enemy6,$enemy7,$enemy8,$enemy9,$enemy10,
					$enemy11,$enemy12,$enemy13,$enemy14,$enemy15,$enemy16,$enemy17,$enemy18,$enemy19,$enemy20,
					$enemy21,$enemy22,$enemy23,$enemy24,$enemy25,$enemy26,$enemy27,$enemy28,$enemy29,$enemy30,
					$enemy31,$enemy32,$enemy33,$enemy34,$enemy35,$enemy36,$enemy37,$enemy38,$enemy39,$enemy40,
					$enemy41,$enemy42,$enemy43,$enemy44,$enemy45,$enemy46,$enemy47,$enemy48,$enemy49,$enemy50,
					$enemy51,$enemy52,$enemy53,$enemy54,$enemy55,$enemy56,$enemy57,$enemy58,$enemy59,$enemy60,
					$enemy61,$enemy62,$enemy63,$enemy64,$enemy65,$enemy66,$enemy67,$enemy68,$enemy69,$enemy70,
					$enemy71,$enemy72,$enemy73,$enemy74,$enemy75,$enemy76,$enemy77,$enemy78,$enemy79,$enemy80,
					$enemy81,$enemy82,$enemy83,$enemy84,$enemy85,$enemy86,$enemy87,$enemy88,$enemy89,$enemy90]
	for m in mass_enemy:
		$Tween.interpolate_property(m,'position',Vector2(m.position.x,m.position.y-1000),m.position,2,Tween.TRANS_QUINT,Tween.EASE_IN_OUT)	
		$Tween.start()
	#$Tween.interpolate_property($enemy36,'position',Vector2(0,0),$enemy36.position,2,Tween.TRANS_QUINT,Tween.EASE_IN_OUT)
