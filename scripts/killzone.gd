extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	# Slow down the game speed.
	Engine.time_scale = 0.5
	# Remove collision shape of body so the player falls down.
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout() -> void:
	# Restore the game speed.
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
