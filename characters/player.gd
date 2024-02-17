extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#input
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * 400 * delta
	
	if Input.is_action_just_pressed("spell1"):
		pass
	if Input.is_action_just_pressed("spell2"):
		pass
	if Input.is_action_just_pressed("spell3"):
		pass
	if Input.is_action_just_pressed("spell4"):
		pass
	if Input.is_action_just_pressed("spell5"):
		pass
	if Input.is_action_just_pressed("spell6"):
		pass
