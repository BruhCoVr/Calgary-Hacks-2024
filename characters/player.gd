extends CharacterBody2D
@onready var animation = $Sprite2D/AnimationPlayer
signal ice(pos, direction)
signal lightning(pos, direction)
signal earth
signal fire(pos, direction)
signal magicmissle(pos, direction)
signal stun(pos, direction)
var can_spell1: bool = true
var can_spell2: bool = true
var can_spell3: bool = true
var can_spell4: bool = true
var can_spell5: bool = true
var can_spell6: bool = true
var health = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func hitted():
	health -= 1
	if health <= 0:
		queue_free()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#input
	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("up"):
		animation.play("player walk")
		
	if Input.is_action_pressed("down"):
		animation.play("player walk")
		
	if Input.is_action_pressed("left"):
		animation.play("player walk")
		
	if Input.is_action_pressed("right"):
		animation.play("player walk")
		
	if Input.is_action_just_released("up"):
		animation.play("idlw")
	
	var player_direction = (get_global_mouse_position() - position).normalized()
	if Input.is_action_just_pressed("spell1")and can_spell1:
		can_spell1 = false
		var shooting = $shooting
		
		$icereload.start()
		ice.emit(shooting.global_position, player_direction)
	if Input.is_action_just_pressed("spell2") and can_spell2:
		can_spell2= false
		var shooting = $shooting
		
		$lightningreload.start()
		lightning.emit(shooting.global_position, player_direction)
	if Input.is_action_just_pressed("spell3") and can_spell3:
		can_spell3 = false
		print("spell one shot")
		$earthaoereload.start()
		earth.emit()
	if Input.is_action_just_pressed("spell4")and can_spell4:
		can_spell4 = false
		var shooting = $shooting
		
		$stunreload.start()
		stun.emit(shooting.global_position, player_direction)
	if Input.is_action_just_pressed("spell5")and can_spell5:
		can_spell5 = false
		var shooting = $shooting
		
		$magicmisslereload.start()
		magicmissle.emit(shooting.global_position, player_direction)
	if Input.is_action_just_pressed("spell6")and can_spell6:
		can_spell6 = false
		var shooting = $shooting
		
		$fireballreload.start()
		fire.emit(shooting.global_position, player_direction)



func _on_timer_timeout():
	can_spell1 = true

func _on_timer_2_timeout():
	can_spell2 = true

func _on_timer_3_timeout():
	can_spell3 = true

func _on_timer_4_timeout():
	can_spell4 = true

func _on_timer_5_timeout():
	can_spell5 = true

func _on_timer_6_timeout():
	can_spell6 = true
