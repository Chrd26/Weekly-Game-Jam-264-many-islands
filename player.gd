extends KinematicBody

# player speed
export var speed = 3;
#fall acceleration when in air
export var fallSpeed = 75;
var velocity = Vector3.ZERO;
var position = Vector3.ZERO;

func _physics_process(_delta):
	var direction = Vector3.ZERO;
	if Input.is_action_pressed("move_right"):
		direction.x -= 1;
	
	if Input.is_action_pressed("move_left"):
		direction.x += 1;
	
	if direction != Vector3.ZERO:
		direction = direction.normalized();
		#$Pivot.look_at(translation + direction, Vector3.UP);
		
	velocity.x = direction.x * speed;
	velocity = move_and_slide(velocity, Vector3.UP);
	global_transform.origin.x = clamp(global_transform.origin.x, -1, 1);
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	pass # Replace with function body.
	if body.is_in_group("island"):
		Global.lives -= 1;
		

