extends KinematicBody

# player speed
export var speed = 3;
#fall acceleration when in air
export var fallSpeed = 75;
var velocity = Vector3.ZERO;
var position = Vector3.ZERO;
var randomPitch = RandomNumberGenerator.new();
var randomPitchNumber;


func _physics_process(_delta):
	var direction = Vector3.ZERO;
	if Input.is_action_pressed("move_right"):
		direction.x -= 1;
		$boatmachinesound.pitch_scale = 1.5;
	
	if Input.is_action_pressed("move_left"):
		direction.x += 1;
		$boatmachinesound.pitch_scale = 1.5;
	
	if Input.is_action_just_released("move_left"):
		$boatmachinesound.pitch_scale = 1;
	
	if Input.is_action_just_released("move_right"):
		$boatmachinesound.pitch_scale = 1;

	if direction != Vector3.ZERO:
		direction = direction.normalized();
		#$Pivot.look_at(translation + direction, Vector3.UP);
		
	velocity.x = direction.x * speed;
	velocity = move_and_slide(velocity, Vector3.UP);
	global_transform.origin.x = clamp(global_transform.origin.x, -1.8, 1.8);
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	pass # Replace with function body.
	if body.is_in_group("island"):
		if Global.isImmunityOn:
			pass
		else:
			Global.lives -= 1;
			if !$loselife.is_playing():
				randomPitch.randomize();
				randomPitchNumber = randomPitch.randf_range(1.1, 1.15);
				$loselife.pitch_scale = randomPitchNumber;
				$loselife.play();

