extends Spatial
var score = 0;
var lives = 3;
onready var timer = get_node("/root/GlobalTimer");
#onready var getPower = get_node("powerup");
var randomSpawnNumber = RandomNumberGenerator.new();
var randomSpawn
var randomPitch = RandomNumberGenerator.new();
var randomPitchNumber;
var randomPowerSpawn = RandomNumberGenerator.new();
var randomPowerNumber;
var randomPowerTypespawn = RandomNumberGenerator.new();
var randomPowerTypeNumber;
var isImmunityOn = false;
var immunityRounds = 0;
var isDebuff = false;
var isImmunityUIOn = false;
var islifeup = false;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(5);
	timer.start();
	

func _process(_delta):
	
	if Global.lives == 0:
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Game Over.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(body):
	if body.is_in_group("island"):
		Global.score += 1;
		if !$player/pointget.is_playing():
			randomPitch.randomize()
			randomPitchNumber = randomPitch.randf_range(1.2, 1.25);
			$player/pointget.pitch_scale = randomPitchNumber;
		$player/pointget.play();

func _on_spawn_timeout():
	randomPitch.randomize();
	randomPitchNumber = randomPitch.randf_range(1.0, 1.1);
	randomPowerSpawn.randomize();
	randomPowerNumber = randomPowerSpawn.randi_range(1,10);
	if randomPowerNumber <= 3:
		randomPowerTypespawn.randomize();
		randomPowerTypeNumber = randomPowerTypespawn.randi_range(0,2)
		if randomPowerTypeNumber == 0:
			var randDebuff_x;
			var loadDebuff;
			var debuff;
			loadDebuff = load("res://de-buff.tscn");
			randDebuff_x = rand_range(243, 257);
			debuff = loadDebuff.instance();
			debuff.translation.x = randDebuff_x;
			debuff.translation.y = 38.1;
			debuff.translation.z = 250;
			add_child(debuff);
		elif randomPowerTypeNumber == 1:
			var randImmunity_x;
			var loadImmunity;
			var immunity;
			loadImmunity = load("res://immunity.tscn");
			randImmunity_x = rand_range(243, 257);
			immunity = loadImmunity.instance();
			immunity.translation.x = randImmunity_x;
			immunity.translation.y = 38.1;
			immunity.translation.z = 250;
			add_child(immunity);
		elif randomPowerTypeNumber == 2:
			var randLife_x;
			var loadLife;
			var life;
			loadLife = load("res://lifeup.tscn");
			randLife_x = rand_range(243, 257);
			life = loadLife.instance();
			life.translation.x = randLife_x;
			life.translation.y = 38.1;
			life.translation.z = 250;
			add_child(life);
	
	randomSpawnNumber.randomize();
	randomSpawn = randomSpawnNumber.randi_range(0, 10);
	if Global.score > 0:
		var time1 = 1/ Global.score+5;
		var time2 = 1/ Global.score+4;
		var time3 = 1/ Global.score+3;
		var time4 = 1/ Global.score+2;
		var time5 = 1/ Global.score+1;
		#var time6 = 1/ Global.score;
		#print(randomSpawn);
		if Global.score < 10 && Global.score > 0:
			timer.set_wait_time(time1);
			print(time1);
		if Global.score > 10 && Global.score < 20:
			timer.set_wait_time(time2);
			print(time2);
		if Global.score > 20 && Global.score < 30:
			timer.set_wait_time(time3);
			print(time3);
		if Global.score > 30 && Global.score < 40:
			timer.set_wait_time(time4);
			print(time4);
		if Global.score > 40 && Global.score < 50:
			timer.set_wait_time(time5);
			print(time5);
		if Global.score > 50 && Global.score < 60:
			timer.set_wait_time(0.5);
			#print(time6);
		if Global.score > 60 && Global.score < 100:
			timer.set_wait_time(0.3);
		if Global.score > 100:
			timer.set_wait_time(0.1);
	if Global.score < 10:
		for _number in range (1):
			var rand_x;
			var loadisland;
			var island;
			loadisland = load("res://island1spawnandmovement.tscn");
			rand_x = rand_range(240, 260);
			island = loadisland.instance();
			island.translation.x = rand_x;
			island.translation.y = 37.8;
			island.translation.z = 250;
			add_child(island);
	elif Global.score >  10:
		if randomSpawn > 7:
			print("spawn multiple");
			for _number in range (Global.score / 10):
				var rand_x;
				var loadisland;
				var island;
				loadisland = load("res://island1spawnandmovement.tscn");
				rand_x = rand_range(219, 281);
				island = loadisland.instance();
				island.translation.x = rand_x;
				island.translation.y = 37.8;
				island.translation.z = 250;
				add_child(island);
		elif randomSpawn < 7:
			print("one");
			for _number in range (1):
				var rand_x;
				var loadisland;
				var island;
				loadisland = load("res://island1spawnandmovement.tscn");
				rand_x = rand_range(229, 271);
				island = loadisland.instance();
				island.translation.x = rand_x;
				island.translation.y = 37.8;
				island.translation.z = 250;
				add_child(island);
