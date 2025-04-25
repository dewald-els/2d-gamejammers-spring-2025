class_name PlayerSpawner extends Marker2D

@export var player_scene: PackedScene


func _ready() -> void:
    await owner.ready

    var player: Player = player_scene.instantiate()
    owner.add_child(player)
    player.global_position = global_position