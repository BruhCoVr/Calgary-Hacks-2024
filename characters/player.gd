extends CharacterBody2D

var can_spell1: bool = true
var can_spell2: bool = true
var can_spell3: bool = true
var can_spell4: bool = true
var can_spell5: bool = true
var can_spell6: bool = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	if Input.is_action_just_pressed("spell1"):
		can_spell1 = false
		print("spell one shot")
		$timer.start()
	if Input.is_action_just_pressed("spell2"):
		can_spell2= false
		print("spell one shot")
		$timer2.start()
	if Input.is_action_just_pressed("spell3"):
		can_spell3 = false
		print("spell one shot")
		$timer3.start()
	if Input.is_action_just_pressed("spell4"):
		can_spell4 = false
		print("spell one shot")
		$timer4.start()
	if Input.is_action_just_pressed("spell5"):
		can_spell5 = false
		print("spell one shot")
		$timer5.start()
	if Input.is_action_just_pressed("spell6"):
		can_spell6 = false
		print("spell one shot")
		$timer6.start()


func _on_timer_timeout():
	can_spell1 = true



func _on_timer_2_timeout():
	pass # Replace with function body.


func _on_timer_3_timeout():
	pass # Replace with function body.


func _on_timer_4_timeout():
	pass # Replace with function body.


func _on_timer_5_timeout():
	pass # Replace with function body.


func _on_timer_6_timeout():
	pass # Replace with function body.
