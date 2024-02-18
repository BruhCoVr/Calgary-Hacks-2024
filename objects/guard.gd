extends CharacterBody2D

@onready var animation = $Sprite2D/AnimationPlayer
signal hitted
var health = 3

func hit():
	health -= 1
	if health <= 0:
		queue_free()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	animation.play("enemy")
	


