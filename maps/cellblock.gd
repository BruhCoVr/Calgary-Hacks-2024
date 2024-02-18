extends Area2D


var fireball_scene = preload("res://spells/fireball.tscn")
var magicmissle_scene = preload("res://spells/magicmissle.tscn")
var lightning_scene = preload("res://spells/lightning.tscn")
var earthaoe_scene = preload("res://spells/earthaoe.tscn")
var ice_scene = preload("res://spells/ice.tscn")
var stun_scene = preload("res://spells/stun.tscn")


func _on_player_ice(pos):
	var ice = ice_scene.instantiate()
	ice.position = pos
	add_child(ice)

func _on_player_magicmissle(pos):
	var magicmissle = magicmissle_scene.instantiate()
	magicmissle.position = pos
	add_child(magicmissle)

func _on_player_fire(pos):
	var fireball = fireball_scene.instantiate()
	fireball.position = pos
	add_child(fireball)

func _on_player_earth():
	var earthaoe = earthaoe_scene.instantiate()
	earthaoe.position = $Player.position
	add_child(earthaoe)

func _on_player_lightning(pos):
	var lightning = lightning_scene.instantiate()
	lightning.position = pos
	add_child(lightning)

func _on_player_stun(pos):
	var stun = stun_scene.instantiate()
	stun.position = pos
	add_child(stun)
