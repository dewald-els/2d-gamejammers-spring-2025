class_name PlayerStateRun extends PlayerState


func physics_update(_delta: float) -> void:
    if not player.velocity_component:
        return

    var direction = player.controller_component.get_movement_vector().normalized()
    player.velocity_component.accelerate(direction)
    player.velocity_component.move(player)

    if player.velocity_component.stopped:
        finished.emit(STATE_IDLE)