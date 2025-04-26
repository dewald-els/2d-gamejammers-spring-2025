class_name PlayerStateDash extends PlayerState


var dash_power: float = 1.2
var dash_duration: float = 0.10
var dash_cooldown: float = 1.0
var base_velocity: Vector2 = Vector2.ZERO
var dash_time_remaining: float = 0.0


func enter(_p: String, _d: Dictionary = {}) -> void:
	player.dash_cooldown_timer.start()
	base_velocity = player.velocity_component.velocity
	dash_time_remaining = dash_duration

func physics_update(delta: float) -> void:
	dash_time_remaining = dash_time_remaining - delta
	player.velocity_component.velocity = player.velocity * dash_power
	player.velocity_component.move(player)

	print("Remaining dash time: ", dash_time_remaining)

	if dash_time_remaining <= 0:
		player.velocity_component.velocity = base_velocity
		finished.emit(STATE_RUN)
