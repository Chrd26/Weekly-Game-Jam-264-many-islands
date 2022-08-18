extends Spatial
var score = 0;
var lives = 3;
onready var timer = get_node("/root/GlobalTimer");
var randomSpawnNumber = RandomNumberGenerator.new();
var randomSpawn
var randomPitch = RandomNumberGenerator.new();
var randomPitchNumber;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(5);
	timer.start();
	

func _process(_delta):
	if lives == 0:
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Game Over.tscn")
		if Global.score < 10 && score > 0:
			timer.set_wait_time(1 / score + 5);
		if Global.score > 10 && score < 20:
			timer.set_wait_time(1 / score + 4);
		if Global.score > 20 && score < 30:
			timer.set_wait_time(1 / score + 3);
		if Global.score > 30 && score < 40:
			timer.set_wait_time(1 / score + 2);
		if Global.score > 40 && score < 50:
			timer.set_wait_time(1 / score + 1);
		if Global.score > 50:
			timer.set_wait_time(1 / score + 0);

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(_body):
	Global.score += 1;
	if !$player/pointget.is_playing():
		randomPitch.randomize()
		randomPitchNumber = randomPitch.randf_range(0.8, 1.1);
		$player/pointget.pitch_scale = randomPitchNumber;
		$player/pointget.play();

func _on_spawn_timeout():
	randomSpawnNumber.randomize()
	randomSpawn = randomSpawnNumber.randi_range(0, 10);
	print(randomSpawn);
	if Global.score < 10:
		for _number in range (1):
			var rand_x;
			var loadisland;
			var island;
			loadisland = load("res://island1spawnandmovement.tscn");
			rand_x = rand_range(243, 254);
			island = loadisland.instance();
			island.translation.x = rand_x;
			island.translation.y = 37.8;
			island.translation.z = 250;
			add_child(island);
	elif Global.score >  10:
		if randomSpawn > 5:
			print("spawn multiple");
			for _number in range (score / 10):
				var rand_x;
				var loadisland;
				var island;
				loadisland = load("res://island1spawnandmovement.tscn");
				rand_x = rand_range(243, 254);
				island = loadisland.instance();
				island.translation.x = rand_x;
				island.translation.y = 37.8;
				island.translation.z = 250;
				add_child(island);
		elif randomSpawn < 5:
			print("one");
			for _number in range (1):
				var rand_x;
				var loadisland;
				var island;
				loadisland = load("res://island1spawnandmovement.tscn");
				rand_x = rand_range(243, 254);
				island = loadisland.instance();
				island.translation.x = rand_x;
				island.translation.y = 37.8;
				island.translation.z = 250;
				add_child(island);
