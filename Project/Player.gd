extends RigidBody2D


var rotationAngle = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("launch"):
		apply_impulse(Vector2(0,0), Vector2(0,-100))
	
	if Input.is_action_pressed("rotate_right"):
		rotationAngle += 1
	
	if Input.is_action_pressed("rotate_left"):
		rotationAngle -= 1
	
	if rotationAngle > 45:
		rotationAngle = 45
	if rotationAngle < -45:
		rotationAngle = -45
	
	$ArrowRotater.rotation_degrees =  rotationAngle
