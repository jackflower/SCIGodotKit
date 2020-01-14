extends KinematicBody2D

# 2020-01-14

var speed = 200
var velocity = Vector2()


func _ready():
	set_physics_process(true)
	pass
	
	
func get_input():
	
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2(speed, 0)
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2(-speed, 0)
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2(0, speed)
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(0, -speed)
	pass
	
	
func _physics_process(delta):
	get_input()
	move_and_slide(velocity)
