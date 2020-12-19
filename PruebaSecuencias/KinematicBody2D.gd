extends KinematicBody2D

var pos = Vector2()
var mov = 5
var vel = 3000


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	pos.x = -mov
	pos = move_and_slide(pos*vel*delta)
	
	
func _on_Area2D_body_entered(body):
	if Input.is_action_pressed("ui_accept"):
		queue_free()


func _on_Area2D_body_exited(body):
	if Input.is_action_pressed("ui_accept"):
		queue_free()
