extends CanvasLayer

# STORE THE SCENE PATH
var scene_path = ""

func _ready():
    # Called every time the node is added to the scene.
    # Initialization here
    get_tree().change_scene("1_Transition_A.tscn")
    pass

# PUBLIC FUNCTION. CALLED WHENEVER YOU WANT TO CHANGE SCENE
func fade_to(scn_path):
    self.scene_path = scn_path # store the scene path
    get_node("AnimationPlayer").play("FadeIn") # play the transition animation

# PRIVATE FUNCTION. CALLED AT THE MIDDLE OF THE TRANSITION ANIMATION
func change_scene():
    if scene_path != "":
        get_tree().change_scene(scene_path)