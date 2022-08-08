extends Spatial
var score = 0;
var lives = 3;
onready var timer = get_node("/root/GlobalTimer");

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body
	timer.set_wait_time(5);
	timer.start();
	
	

func _process(_delta):
	if lives == 0:
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Game Over.tscn")
	
	if Global.score >= 10:
		timer.set_wait_time(4);
		if Global.score >= 20:
			timer.set_wait_time(3);
			if Global.score >= 30:
				timer.set_wait_time(1);

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(_body):
	pass # Replace with function body.
	Global.score += 1;


func _on_spawn_timeout():
	pass # Replace with function body.
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
	print("time");
