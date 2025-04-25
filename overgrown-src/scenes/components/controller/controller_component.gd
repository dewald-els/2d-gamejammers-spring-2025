class_name ControllerComponent extends Node

func get_movement_vector() -> Vector2:
	var horizontal = Input.get_axis("player_left", "player_right")
	var vertical = Input.get_axis("player_up", "player_down")
	
	var movement_vector = Vector2(
		horizontal,
		vertical
	)

	return movement_vector