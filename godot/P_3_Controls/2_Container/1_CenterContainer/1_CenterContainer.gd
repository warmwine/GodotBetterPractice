extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
    # Called every time the node is added to the scene.
    # Initialization here
    
    pass

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass

func _draw():
    print("ready to draw circle...")
    draw_circle ( Vector2(0,0), 200, Color(1,1,1,1) )
    print("done")
    pass
