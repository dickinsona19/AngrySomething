extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$powermeter/powermeter2.hide()
	$powermeter/powermeter3.hide()
	$powermeter/powermeter4.hide()
	$powermeter/powermeter5.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var playerPower = $Player.power
	
	if playerPower == 1:
		$powermeter/powermeter1.show()
		$powermeter/powermeter2.hide()
		$powermeter/powermeter3.hide()
		$powermeter/powermeter4.hide()
		$powermeter/powermeter5.hide()
	if playerPower >= 2:
		$powermeter/powermeter1.show()
		$powermeter/powermeter2.show()
		$powermeter/powermeter3.hide()
		$powermeter/powermeter4.hide()
		$powermeter/powermeter5.hide()
	if playerPower >= 3:
		$powermeter/powermeter1.show()
		$powermeter/powermeter2.show()
		$powermeter/powermeter3.show()
		$powermeter/powermeter4.hide()
		$powermeter/powermeter5.hide()
	if playerPower >= 4:
		$powermeter/powermeter1.show()
		$powermeter/powermeter2.show()
		$powermeter/powermeter3.show()
		$powermeter/powermeter4.show()
		$powermeter/powermeter5.hide()
	if playerPower >= 4.5:
		$powermeter/powermeter1.show()
		$powermeter/powermeter2.show()
		$powermeter/powermeter3.show()
		$powermeter/powermeter4.show()
		$powermeter/powermeter5.show()


func _on_Enemy_body_entered(body):
	print("HIT!")


func _on_Area2D_area_entered(area):
	print("HIT!")


func _on_RigidBody2D_body_entered(body):
	if body == $Player:
		print("HIT!")
