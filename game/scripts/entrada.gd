extends Node2D

@onready var character_body_2d: CharacterBody2D = $CharacterBody2D
@onready var to_elevator_corridor: Area2D = $"to-elevator-corridor"
@onready var interact_label: Label = $CharacterBody2D/interact_label

var player_on_area = "none"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func show_interact_label(bol: bool):
	interact_label.visible = bol
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if player_on_area != "none" and Input.is_action_just_pressed("interact"):
		var ruta = "res://game/scenes/" + player_on_area + ".tscn"
		get_tree().change_scene_to_file(ruta)


func _on_to_cafeteria_body_entered(_body: Node2D) -> void:
	player_on_area = "cafeteria"
	show_interact_label(true)
	
func _on_to_reception_body_entered(_body: Node2D) -> void:
	player_on_area = "reception"
	show_interact_label(true)
	
func _on_to_elevator_corridor_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://game/scenes/elevator_corridor.tscn")

	


func _on_to_cafeteria_body_exited(body: Node2D) -> void:
	player_on_area = "none"
	show_interact_label(false)
	


func _on_to_reception_body_exited(body: Node2D) -> void:
	player_on_area = "none"
	show_interact_label(false)

func _on_to_upstairs_hall_body_entered(body: Node2D) -> void:
	player_on_area = "upstairs_hall"
	show_interact_label(true)


func _on_to_upstairs_hall_body_exited(body: Node2D) -> void:
	player_on_area = "none"
	show_interact_label(false)
