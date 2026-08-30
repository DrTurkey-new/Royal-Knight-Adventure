extends Node2D

@onready var ray_cast_2d_right: RayCast2D = $RayCast2DRight
@onready var ray_cast_2d_left: RayCast2D = $RayCast2DLeft

var direction = 1

const SPEED = 60
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ray_cast_2d_left.is_colliding():
		direction = 1
		
	if ray_cast_2d_right.is_colliding():
		direction = -1
	
	position.x += direction * SPEED * delta
