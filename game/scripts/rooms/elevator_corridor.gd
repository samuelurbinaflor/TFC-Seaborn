extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var interact_label: Label = $Player/interact_label

#Almacena el nombre de la siguiente escena
var player_on_area = "none"

#Refleja el id de la puerta en la que va a aparecer en la siguiente escena y la direccion del player
#0 back, 1 right, 2 front, 3 left
var local_spawn_info = [0,0]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.spawn_info != [0,0]:
		var spawn_node = get_node("doors/door_" + str(Global.spawn_info[0]) + "/spawn_" + str(Global.spawn_info[0]))
		player.position = spawn_node.position

func show_interact_label(bol: bool):
	interact_label.visible = bol
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#Interact with a door
	if player_on_area != "none" and Input.is_action_just_pressed("interact"):
		var ruta = "res://game/scenes/rooms/" + player_on_area + ".tscn"
#		aqui quiero hacer que mande una señal a la siguiente escena donde le pueda mandar un número
		Global.spawn_info = local_spawn_info
		get_tree().change_scene_to_file(ruta)


func _on_door_1_body_entered(body: Node2D) -> void:
	Global.spawn_info = [4,4]
	get_tree().change_scene_to_file("res://game/scenes/rooms/hall.tscn")

func _on_door_2_body_entered(body: Node2D) -> void:
	Global.spawn_info = [1,1]
	get_tree().change_scene_to_file("res://game/scenes/rooms/classroom_corridor.tscn")
	

func _on_door_3_body_entered(body: Node2D) -> void:
	player_on_area = "upstairs"
	local_spawn_info = [3,4]
	show_interact_label(true)

func _on_door_4_body_entered(body: Node2D) -> void:
	player_on_area = "maintenance"
	local_spawn_info = [1,4]
	show_interact_label(true)
	

func _on_door_5_body_entered(body: Node2D) -> void:
	local_spawn_info = [1,3]
	get_tree().change_scene_to_file("res://game/scenes/rooms/nursing_corridor.tscn")
	
	


func area_exited():
	player_on_area = "none"
	show_interact_label(false)
	

func _on_door_2_body_exited(body: Node2D) -> void:
	area_exited()

func _on_door_3_body_exited(body: Node2D) -> void:
	area_exited()

func _on_door_4_body_exited(body: Node2D) -> void:
	area_exited()

func _on_door_5_body_exited(body: Node2D) -> void:
	area_exited()
