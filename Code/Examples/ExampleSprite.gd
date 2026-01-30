class_name ExampleSprite
extends Sprite2D

# Jäsenmuuttujat
@export var _speed: float = 10

# Called when the node enters the scene tree for the first time.
# Käytetään Noden alustukseen.
func _ready() -> void:
	print("Sijainti maailman kortinaatistossa: " + str(global_position))
	print("Lokaali sijainti: " + str(position))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#liikutetaan objektia
	# on pikseliä per sekunti, eikä pikseliä per frame
	global_position.x += _speed * delta
	
