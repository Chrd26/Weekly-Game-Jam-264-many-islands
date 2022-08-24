extends Spatial
var randomPitch = RandomNumberGenerator.new();
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


func _on_Area_body_entered(body):
	if body.is_in_group("player"):
		randomPitch.randomize()
		randomPitchNumber = randomPitch.randf_range(1.0, 1.1);
		$"/root/Powerupsound".pitch_scale = randomPitchNumber;
		$"/root/Powerupsound".play();
		Global.lives += 1;
		print("life")
		queue_free(); 
	else:
		pass;


func _on_AnimationPlayer2_animation_finished(_anim_name):
		queue_free()
