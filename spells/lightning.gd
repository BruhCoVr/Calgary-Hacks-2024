extends Area2D
@onready var animation = $Sprite2D/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play("lightning")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
