extends AnimationPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func _process(_delta):
	if Global.score < 100:
		playback_speed = 0.3;
	if Global.score > 100  && Global.score < 200:
		playback_speed = 0.2;
	if Global.score > 200:
		playback_speed = 0.1
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
