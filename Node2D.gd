extends Node2D

@onready var collision = $Area2D/CollisionShape2D
@onready var sprite = $Area2D/Sprite2D

@onready var radius_size = 10

func _draw()->void:
	draw_circle(Vector2(0,0), radius_size*1, Color.BLACK)

# Called when the node enters the scene tree for the first time.
func _ready():
	#collision.get_shape().radius = 0
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	radius_size += delta*0.01
	
	queue_redraw()
	
	#collision.shape.radius += radius_size



func _on_area_2d_area_entered(area):
	print(area.name,"Detected")
