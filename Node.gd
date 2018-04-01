extends Node

export var rotate_speed = 5;
export var movement_speed = 20;
export var max_rotation = 2.00
var ship;
var r;
var rr;
var y=0;
# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	ship = get_child(0);
	r = 0;
	pass



func _process(delta):
	
	if Input.is_key_pressed(KEY_UP):
		r = max(r - rotate_speed * delta,-max_rotation);

		y = min(y + (movement_speed*delta),20);
	elif Input.is_key_pressed(KEY_DOWN):
		r = min(r + rotate_speed * delta,max_rotation);

		y = max(y - (movement_speed*delta),-20)
	else:
		if abs(r) < 0.02:
			r = 0;
		else:
			r = sign(r) * (abs(r) - (rotate_speed*2 * delta));
		print(r);
		
	#r=r+5;
	rr = sin(r)
	ship.rotation = Vector3(0,90,rr);
#	print(ship.transform.origin)
	ship.transform.origin = Vector3(0,y,-30)
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#func _input(event):
#	print (event);
	