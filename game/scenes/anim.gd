extends CharacterBody2D

const SPEED = 200.0
const WAIT_TIME = 5.0

@onready var anim_tree: AnimationTree = $AnimationTree
@onready var state_machine = anim_tree.get("parameters/playback")
@onready var sprite = $Sprite2D

var direction := Vector2.ZERO
var is_crouching := false
var is_interacting := false

var idle_timer := 0.0


func _ready():
	anim_tree.active = true


func _physics_process(delta):
	handle_input()
	move()
	update_idle_timer(delta)
	update_animation()


# -------------------------
# INPUT
# -------------------------
func handle_input():
	if is_interacting:
		return

	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	is_crouching = Input.is_action_pressed("shift")

	if Input.is_action_just_pressed("interact"):
		start_interact()


# -------------------------
# MOVIMIENTO
# -------------------------
func move():
	if is_interacting:
		velocity = Vector2.ZERO
	else:
		velocity = direction * SPEED

	move_and_slide()


# -------------------------
# IDLE TIMER (para waiting)
# -------------------------
func update_idle_timer(delta):
	if direction.length() > 0.1:
		idle_timer = 0.0
	else:
		idle_timer += delta


# -------------------------
# ANIMACIÓN
# -------------------------
func update_animation():
	if is_interacting:
		return

	# Flip horizontal
	if direction.x != 0:
		sprite.flip_h = direction.x < 0

	var current_dir = get_anim_direction()

	# Elegir estado base
	if is_crouching:
		state_machine.travel("Crouching")
		anim_tree.set("parameters/Crouching/blend_position", current_dir)
		anim_tree.set("parameters/Crouching/conditions/is_waiting", idle_timer > WAIT_TIME)
	else:
		state_machine.travel("Standing")
		anim_tree.set("parameters/Standing/blend_position", current_dir)
		anim_tree.set("parameters/Standing/conditions/is_waiting", idle_timer > WAIT_TIME)


# -------------------------
# INTERACT
# -------------------------
func start_interact():
	is_interacting = true
	velocity = Vector2.ZERO

	var dir = get_anim_direction_name()

	if is_crouching:
		state_machine.travel("Crouching_Interact_" + dir)
	else:
		state_machine.travel("Standing_Interact_" + dir)


func _on_animation_finished():
	is_interacting = false


# -------------------------
# DIRECCIÓN
# -------------------------
func get_anim_direction() -> Vector2:
	if direction.length() < 0.1:
		return Vector2(0, -1) # default front

	return direction.normalized()


func get_anim_direction_name() -> String:
	if abs(direction.x) > abs(direction.y):
		return "s"
	elif direction.y < 0:
		return "b"
	else:
		return "f"
