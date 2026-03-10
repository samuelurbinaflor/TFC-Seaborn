extends CharacterBody2D

const SPEED = 50.0
const WAITING_TIME = 5.0

@onready var sprite = $AnimatedSprite2D

# --- State machine ---
var current_state = "idle"
var idle_timer = 0.0

# Guarda la última dirección
var last_direction = Vector2(0, 1) # mirando hacia abajo por defecto


func _physics_process(delta: float) -> void:

	var input_vector := Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	var is_crouching := Input.is_action_pressed("shift")

	# Normalizar diagonal
	if input_vector != Vector2.ZERO:
		input_vector = input_vector.normalized()
		last_direction = input_vector

	# Movimiento
	if input_vector != Vector2.ZERO:
		velocity = input_vector * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()

	# --- STATE MACHINE ---
	match current_state:
		"idle":
			idle_state(delta, input_vector, is_crouching)
		"walk":
			walk_state(input_vector, is_crouching)
		"waiting":
			waiting_state(delta, input_vector, is_crouching)
		"crouch":
			crouch_state(input_vector, is_crouching)

	update_animation(input_vector, is_crouching)

# --- ESTADOS ---

func idle_state(delta, input_vector, is_crouching):
	idle_timer += delta

	if input_vector != Vector2.ZERO:
		current_state = "walk"
		idle_timer = 0

	elif is_crouching:
		current_state = "crouch"
		idle_timer = 0

	elif idle_timer >= WAITING_TIME:
		current_state = "waiting"
		idle_timer = 0


func walk_state(input_vector, is_crouching):

	if input_vector == Vector2.ZERO:
		current_state = "idle"

	elif is_crouching:
		current_state = "crouch"


func waiting_state(delta, input_vector, is_crouching):

	idle_timer += delta

	if input_vector != Vector2.ZERO:
		current_state = "walk"
		idle_timer = 0

	elif is_crouching:
		current_state = "crouch"
		idle_timer = 0


func crouch_state(input_vector, is_crouching):

	if not is_crouching:
		current_state = "idle"


# --- ANIMACIONES ---

func update_animation(input_vector: Vector2, is_crouching: bool):

	var anim_name = ""

	if input_vector.x != 0:

		if is_crouching:
			anim_name = "crouch_side"
		else:
			anim_name = "walk_side"

		sprite.flip_h = input_vector.x < 0


	elif input_vector.y != 0:

		if input_vector.y < 0:
			anim_name = "walk_up" if current_state == "walk" else "idle_up"
		else:
			anim_name = "walk_down" if current_state == "walk" else "idle_down"


	else:
		if current_state == "waiting":
			anim_name = "waiting"
		elif last_direction.x != 0:
			anim_name = "crouch_side" if is_crouching else "idle_side"
			sprite.flip_h = last_direction.x < 0

		elif last_direction.y < 0:
			anim_name = "crouch_up" if is_crouching else "idle_up"

		else:
			anim_name = "crouch_down" if is_crouching else "idle_down"


	# CAMBIAR ANIMACIÓN
	if sprite.animation != anim_name:
		sprite.play(anim_name)
