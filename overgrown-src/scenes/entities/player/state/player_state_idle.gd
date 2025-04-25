class_name PlayerStateIdle extends PlayerState

func enter(_prev_state_path: String, _data: Dictionary = {}) -> void:
	player.velocity_component.stop()


func physics_update(_delta: float) -> void:
	var direction = player.controller_component.get_movement_vector()
	
	if direction != Vector2.ZERO:
		finished.emit(STATE_RUN)
