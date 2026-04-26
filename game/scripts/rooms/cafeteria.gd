extends Node2D
@onready var player: CharacterBody2D = $Player
@onready var spawn_3: Node2D = $to_hall/spawn_3
#This array contains the facing direction for each spawnpoint
const spawn: Array = [0,"F","F","L"]

#Almacena el nombre de la siguiente escena
var player_on_area = "none"
#Refleja el id de la puerta en la que va a aparecer en la siguiente escena
var local_spawn_info = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var spawn_node = get_node("doors/door_" + str(Global.spawn_info[0]) + "/spawn_" + str(Global.spawn_info[0]))
	player.position = spawn_node.position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#Interact with a door
	if player_on_area != "none" and Input.is_action_just_pressed("interact"):
		var ruta = "res://game/scenes/rooms/" + player_on_area + ".tscn"
#		aqui quiero hacer que mande una señal a la siguiente escena donde le pueda mandar un número
		Global.spawn_info = local_spawn_info
		get_tree().change_scene_to_file(ruta)


func _on_door_3_body_entered(body: Node2D) -> void:
	player_on_area = "hall"
	local_spawn_info = [1,2]
	player.show_interact_label(true)


func _on_door_3_body_exited(body: Node2D) -> void:
	player_on_area = "none"
	player.show_interact_label(false)
