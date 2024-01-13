extends CollisionShape2D

@onready var collision = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	print(collision.get_radius)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
