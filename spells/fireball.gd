extends Area2D
@onready var animation = $Sprite2D/AnimationPlayer
var speed: int = 1000
var direction: Vector2 = Vector2.UP
# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play("fire")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direction * speed * delta
	



func _on_body_entered(body):
	queue_free()
