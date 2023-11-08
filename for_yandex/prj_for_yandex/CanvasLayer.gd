extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.js_show_ad()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_b1_button_down():
	Global.health=4
	get_tree().change_scene("res://bonus01/bonus01.tscn")

func _on_b2_button_down():
	Global.health=4
	get_tree().change_scene("res://bonus02/bonus02.tscn")

func _on_b3_button_down():
	Global.health=4
	get_tree().change_scene("res://bonus03/bonus03.tscn")

func _on_b4_button_down():
	Global.health=4
	get_tree().change_scene("res://bonus04/bonus04.tscn")
