extends Spatial
var score = 0;
var lives = 3;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func _process(_delta):
	if lives == 0:
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Game Over.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(_body):
	pass # Replace with function body.
	Global.score += 1;
