extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Coin!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

@onready var game_manager: Node = %GameManager


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	print("+1 coin!")
	queue_free()
