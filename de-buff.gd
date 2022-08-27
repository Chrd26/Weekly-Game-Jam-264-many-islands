extends Spatial
var randomPitch = RandomNumberGenerator.new();
var randomPitchNumber;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body.is_in_group("player"):
		randomPitch.randomize();
		randomPitchNumber = randomPitch.randf_range(1.0, 1.05);
		$"/root/Debuffsound".pitch_scale = randomPitchNumber;
		$"/root/Debuffsound".play();
		if Global.score < 20:
			for _number in range (2):
				var rand_x;
				var loadisland;
				var island;
				loadisland = load("res://island1spawnandmovement.tscn");
				rand_x = rand_range(248, 251);
				island = loadisland.instance();
				island.translation.x = rand_x;
				island.translation.y = 38;
				island.translation.z = 250;
				add_child(island);
		elif Global.score > 20:
			if Global.score < 20:
				for _number in range (Global.score/10):
					var rand_x;
					var loadisland;
					var island;
					loadisland = load("res://island1spawnandmovement.tscn");
					rand_x = rand_range(248, 251);
					island = loadisland.instance();
					island.translation.x = rand_x;
					island.translation.y = 38;
					island.translation.z = 250;
					add_child(island);
		print("debuff");
		queue_free();
	else:
		pass



func _on_movement_animation_finished(_anim_name):
	queue_free();
