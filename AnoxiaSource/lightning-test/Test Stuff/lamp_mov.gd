extends Node2D




func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += 1
	if Input.is_key_pressed(KEY_UP):
		position.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		position.y += 1
	if Input.is_key_pressed(KEY_Z):
		rotation += 0.01
	if Input.is_key_pressed(KEY_X):
		rotation -= 0.01
