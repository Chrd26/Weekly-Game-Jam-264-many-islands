extends CanvasLayer
var isUIOn = false;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(_delta):
	if Global.isImmunityOn && !isUIOn:
		$immunityLabel.show();
		$immunityRoundsLeft.show();
		$immunityLabel/labelAnim.play("anim");
		$immunityRoundsLeft/roundsleftAnim.play("timelftAnim");
		$ImmunityTimer.set_wait_time(10);
		$ImmunityTimer.start();
		isUIOn = true;
	$immunityRoundsLeft.text = str($ImmunityTimer.time_left)
	
	# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ImmunityTimer_timeout():
	$immunityLabel.hide();
	$immunityRoundsLeft.hide();
	$immunityLabel/labelAnim.stop();
	$immunityRoundsLeft/roundsleftAnim.stop();
	isUIOn = false;
	Global.isImmunityOn = false;
