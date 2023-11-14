extends Node2D
var enemy_group_direction=Vector2.RIGHT
var health:int=4
var reklama=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#---------------------------------

var callback_rewarded_ad = JavaScript.create_callback(self, '_rewarded_ad')
var callback_ad = JavaScript.create_callback(self, '_ad')
onready var win = JavaScript.get_interface("window")
func js_show_ad():
	win.ShowAd(callback_ad)

func js_show_rewarded_ad():
	win.ShowAdRewardedVideo(callback_rewarded_ad)

func _rewarded_ad(args):
	print(args[0])

func _ad(args):
	print(args[0])
	
#---------------------------------

signal foc_unfoc(value)
var callback_foc_unfoc=JavaScript.create_callback(self, '_foc_unfoc')

func js_foc_unfoc():
	win.foc_unfoc(callback_foc_unfoc)

func _foc_unfoc(args):
	#print(args[0])
	emit_signal("foc_unfoc",args[0])
	
#---------------------------------
