extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	Global.lives = 3;
	Global.timer.set_wait_time(5);


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	pass # Replace with function body.
	# warning-ignore:return_value_discarded
	var loadsound = load("res://sounds.tscn")
	var buttonPlay = loadsound.instance();
	add_child(buttonPlay);
	get_tree().change_scene("res://mainGameplay.tscn");
	Global.score = 0;
	
