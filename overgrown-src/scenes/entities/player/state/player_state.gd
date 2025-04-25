class_name PlayerState extends State

const STATE_IDLE = "Idle"
const STATE_RUN = "Run"
const STATE_DASH = "Dash"
const STATE_HIT = "Hit"


var player: Player

func _ready() -> void:
    await owner.ready
    player = owner as Player
    assert(player != null, "PlayerState must be used in the Player scene")