extends Area2D


var fireball_scene = preload("res://spells/fireball.tscn")
var magicmissle_scene = preload("res://spells/magicmissle.tscn")
var lightning_scene = preload("res://spells/lightning.tscn")
var earthaoe_scene = preload("res://spells/earthaoe.tscn")
var ice_scene = preload("res://spells/ice.tscn")



func _on_player_ice(pos, direction):
	var ice = ice_scene.instantiate()
	ice.position = pos
	ice.rotation_degrees = rad_to_deg(direction.angle()) +90
	ice.direction = direction
	add_child(ice)

func _on_player_magicmissle(pos, direction):
	var magicmissle = magicmissle_scene.instantiate()
	magicmissle.position = pos
	magicmissle.rotation_degrees = rad_to_deg(direction.angle())+90
	magicmissle.direction = direction
	add_child(magicmissle)

func _on_player_fire(pos, direction):
	var fireball = fireball_scene.instantiate()
	fireball.position = pos
	fireball.rotation_degrees = rad_to_deg(direction.angle())+90
	fireball.direction = direction
	add_child(fireball)

func _on_player_earth():
	var earthaoe = earthaoe_scene.instantiate()
	earthaoe.position = $Player.position
	add_child(earthaoe)

func _on_player_lightning(pos, direction):
	var lightning = lightning_scene.instantiate()
	lightning.position = pos
	lightning.rotation_degrees =rad_to_deg(direction.angle())+90
	lightning.direction = direction
	add_child(lightning)

