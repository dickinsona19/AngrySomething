extends RigidBody2D
signal wasLaunched

var rotationAngle = 0
var power =.9
var powerTop= false
var powerBottom = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("rotate_right"):
		rotationAngle += 1
	
	if Input.is_action_pressed("rotate_left"):
		rotationAngle -= 1
	
	if powerBottom == true:
		power += .01
	if powerTop == true:
		power -= .01
	
	
	if power >= 5:
		powerBottom = false
		powerTop = true
	
	if power <= 1:
		powerBottom = true
		powerTop = false
	
	if rotationAngle > 45:
		rotationAngle = 45
	if rotationAngle < -45:
		rotationAngle = -45
	
	$ArrowRotater.rotation_degrees =  rotationAngle
	
	
	if Input.is_action_just_pressed("launch"):
		apply_impulse(Vector2(0,0), Vector2(100* power,-100 *power).rotated(deg2rad(rotationAngle)))
		$ArrowRotater.hide()
		emit_signal("wasLaunched")
