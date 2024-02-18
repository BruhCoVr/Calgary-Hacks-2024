extends CharacterBody2D

@onready var animation = $Sprite2D/AnimationPlayer
@onready var nav_agent = $NavigationAgent2D
var movemet_speed = 200
signal hitted
var health = 3
var player
var pos = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	call_deferred("actor_setup")
	call_deferred("get_player")

func get_player():
	player = get_parent().find_child("Player")

func actor_setup():
	# Wait for the first physics frame so the NavigationServer can sync.
	await(get_tree().physics_frame)
	
	# Now that the navigation map is no longer empty, set the movement target.

func set_movement_target(movement_target: Vector2):
	nav_agent.target_position = movement_target

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pos = player.global_position
	animation.play("enemy")
	var target = pos
	nav_agent.target_position = target # Update the target every frame
	velocity = position.direction_to(nav_agent.get_next_path_position()) * movemet_speed
	move_and_slide()



