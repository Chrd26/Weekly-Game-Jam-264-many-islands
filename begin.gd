extends Node2D
var randomPitch = RandomNumberGenerator.new()
var randomPitchNumber;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	pass # Replace with function body.
	# warning-ignore:return_value_discarded
	$"/root/Music".play();
	randomPitch.randomize();
	randomPitchNumber = randomPitch.randf_range(1, 1.05);
	$"/root/GlobalButton".pitch_scale = randomPitchNumber;
	$"/root/GlobalButton".play();
	get_tree().change_scene("res://mainGameplay.tscn");
	
	
