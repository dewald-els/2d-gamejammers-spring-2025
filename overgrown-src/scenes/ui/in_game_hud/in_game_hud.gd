class_name InGameHUD extends CanvasLayer

@onready var survival_time_label: Label = %SurvivalTimeLabel

var survival_time: float = 0.0

func _physics_process(delta: float) -> void:
	survival_time += delta
	_survival_time_to_seconds(survival_time)


func _survival_time_to_seconds(total_time: float) -> void:
	var seconds = str(int(total_time) % 60).pad_zeros(2)
	var minutes = str((int(total_time) / 60)).pad_zeros(2)
	survival_time_label.text = str(minutes) + ":" + str(seconds)