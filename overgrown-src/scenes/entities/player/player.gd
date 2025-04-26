class_name Player extends CharacterBody2D


@onready var velocity_component: VelocityComponent = %VelocityComponent
@onready var controller_component: ControllerComponent = %ControllerComponent
@onready var state_machine: StateMachine = %StateMachine
@onready var dash_cooldown_timer: Timer = %DashCooldownTimer
@onready var state_label: Label = %StateLabel


func _ready() -> void:
	dash_cooldown_timer.timeout.connect(_on_dash_cool_down_timeout)

func _process(_delta: float) -> void:
	state_label.text = state_machine.state.name

func _on_dash_cool_down_timeout() -> void:
	pass