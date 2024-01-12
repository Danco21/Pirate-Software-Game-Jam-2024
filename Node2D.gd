extends Node2D

var radius = 10

func _draw()->void:
	draw_circle(Vector2(100,100), radius*1, Color.BLACK)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	radius += delta*2
	queue_redraw()

