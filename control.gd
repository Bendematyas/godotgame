extends Control

var button : Button

func _ready() -> void:
	# Készíts egy gombot
	randomize()
	button = Button.new()
	button.text = "Kattints a varázslathoz!"
	button.custom_minimum_size = Vector2(220, 60)
	add_child(button)

	# Igazítsd a képernyő közepére
	button.anchor_left = 0.5
	button.anchor_right = 0.5
	button.anchor_top = 0.5
	button.anchor_bottom = 0.5
	button.offset_left = -110
	button.offset_right = 110
	button.offset_top = -30
	button.offset_bottom = 30

	# Gombhoz esemény hozzárendelése
	button.pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	# Változtasd meg a háttér színét random színre
	var random_color = Color(
		randf(),
		randf(),
		randf(),
		1
	)
	modulate = random_color
	print("Vibe Csekk: SIKER!")
