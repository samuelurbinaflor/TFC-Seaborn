extends CharacterBody2D

var SPEED = 75.0
const NORMAL_SPEED = 75.0
const VERTICAL_SPEED = 15.0
const CROUCH_SPEED = 20.0
const WAITING_TIME = 5.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var interact_label: Label = $interact_label


# --- State machine ---
var current_state = "idle"
var idle_timer = 0.0
var is_crouching = false

# Interacción
var is_interacting = false

# Guarda la última dirección
var last_direction = Vector2(0, 1)

#Tamaño del sprite
@export var min_scale: float = 1.0
@export var max_scale: float = 7.0

@export var max_y: float = 180.0
@export var min_y: float = 85.0


var can_move := false
@export var spawn_lock_time := 0.5

func _ready() -> void:
	set_spawn_direction(Global.spawn_info[1])
	can_move = false
	await get_tree().create_timer(spawn_lock_time).timeout
	can_move = true
	
func _process(delta: float) -> void:
	var t = (position.y - min_y) / (max_y - min_y)
	var scale_value = lerp(min_scale, max_scale, t)
	scale_value = clamp(scale_value, 0.3, 3.0)
	self.scale = Vector2(scale_value, scale_value)
	
func _physics_process(delta: float) -> void:

	# -------------------------
	# INPUT INTERACT (PRIORIDAD)
	# -------------------------
	if not can_move:
		velocity = Vector2.ZERO
		move_and_slide()
		update_animation(Vector2.ZERO)
		return
	
	if Input.is_action_just_pressed("interact") and not is_interacting:
		start_interaction()
		return

	# Si está interactuando, no hace nada más
	if is_interacting:
		velocity = Vector2.ZERO
		move_and_slide()
		return

	# -------------------------
	# INPUT NORMAL
	# -------------------------
	var input_vector := Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	if Input.is_action_just_pressed("shift"):
		is_crouching = !is_crouching

	if input_vector != Vector2.ZERO:
		input_vector = input_vector.normalized()
		last_direction = input_vector
	if input_vector != Vector2.ZERO:
		velocity.x = input_vector.x * SPEED
		velocity.y = input_vector.y * VERTICAL_SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()

	
	match current_state:
		"idle":
			idle_state(delta, input_vector)
		"walk":
			walk_state(input_vector)
		"waiting":
			waiting_state(delta, input_vector)
		"crouch":
			crouch_state(input_vector)

	update_animation(input_vector)

func set_spawn_direction(dir: int) -> void:
	match dir:
		1: # back
			last_direction = Vector2(0, -1)
		2: # right
			last_direction = Vector2(1, 0)
		3: # front
			last_direction = Vector2(0, 1)
		4: # left
			last_direction = Vector2(-1, 0)
		_:
			last_direction = Vector2(0, 1)
# -------------------------
# INTERACCIÓN
# -------------------------
func show_interact_label(bol: bool):
	interact_label.visible = bol
	
func start_interaction():

	is_interacting = true
	velocity = Vector2.ZERO

	var anim_name = ""

	if last_direction.x != 0:
		anim_name = "crouch_interact_side" if is_crouching else "interact_side"
		sprite.flip_h = last_direction.x < 0

	elif last_direction.y < 0:
		anim_name = "crouch_interact_back" if is_crouching else "interact_back"

	else:
		anim_name = "crouch_interact_front" if is_crouching else "interact_front"

	sprite.play(anim_name)

	# Espera a que termine la animación
	await sprite.animation_finished

	is_interacting = false


# -------------------------
# ESTADOS
# -------------------------

func idle_state(delta, input_vector):

	idle_timer += delta

	if input_vector != Vector2.ZERO:
		if is_crouching:
			current_state = "crouch"
			SPEED = CROUCH_SPEED
		else:
			current_state = "walk"
			SPEED = NORMAL_SPEED

		idle_timer = 0

	elif idle_timer >= WAITING_TIME:
		current_state = "waiting"
		idle_timer = 0


func walk_state(input_vector):

	SPEED = NORMAL_SPEED

	if input_vector == Vector2.ZERO:
		current_state = "idle"

	if is_crouching:
		current_state = "crouch"


func waiting_state(delta, input_vector):

	idle_timer += delta

	if input_vector != Vector2.ZERO:

		if is_crouching:
			current_state = "crouch"
			SPEED = CROUCH_SPEED
		else:
			current_state = "walk"
			SPEED = NORMAL_SPEED

		idle_timer = 0


func crouch_state(input_vector):

	SPEED = CROUCH_SPEED

	if not is_crouching:
		current_state = "idle"
		SPEED = NORMAL_SPEED


# -------------------------
# ANIMACIONES
# -------------------------

func update_animation(input_vector: Vector2):

	var anim_name = ""

	# MOVIMIENTO
	if input_vector != Vector2.ZERO:

		if input_vector.x != 0:

			if is_crouching:
				anim_name = "crouch_walk_side"
			else:
				anim_name = "walk_side"

			sprite.flip_h = input_vector.x < 0

		elif input_vector.y < 0:

			if is_crouching:
				anim_name = "crouch_walk_back"
			else:
				anim_name = "walk_back"

		else:

			if is_crouching:
				anim_name = "crouch_walk_front"
			else:
				anim_name = "walk_front"

	# QUIETO
	else:
	
		if current_state == "waiting":
			anim_name = "waiting"
		
		elif last_direction.x != 0:
			anim_name = "crouch_idle_side" if is_crouching else "idle_side"
			sprite.flip_h = last_direction.x < 0

		elif last_direction.y < 0:
			anim_name = "crouch_idle_back" if is_crouching else "idle_back"

		else:
			anim_name = "crouch_idle_front" if is_crouching else "idle_front"

	
	if sprite.animation != anim_name:
		sprite.play(anim_name)
