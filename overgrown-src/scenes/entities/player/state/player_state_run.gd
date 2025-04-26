class_name PlayerStateRun extends PlayerState


func physics_update(_delta: float) -> void:
    if not player.velocity_component:
        return

    var direction = player.controller_component.get_movement_vector().normalized()
    player.velocity_component.accelerate(direction)
    player.velocity_component.move(player)

    if player.dash_cooldown_timer.is_stopped() and Input.is_action_just_pressed("player_dash"):
        finished.emit(STATE_DASH)
    elif direction == Vector2.ZERO:
        finished.emit(STATE_IDLE)