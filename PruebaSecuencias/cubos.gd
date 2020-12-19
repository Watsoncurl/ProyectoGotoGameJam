extends Node

var cube = preload("res://cube.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(6):
		var cub = cube.instance()
		cub.global_position = Vector2(800+200*i,300)
		self.add_child(cub)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
