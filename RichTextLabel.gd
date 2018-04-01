extends RichTextLabel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var a;

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	a = 0;
	
	pass

func _process(delta):
	a=a+1;
	text = "1-UP: " + str(a)
	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
