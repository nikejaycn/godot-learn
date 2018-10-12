extends RigidBody2D

# 速度随机范围
export (int) var min_speed 
export (int) var max_speed
var mob_types = ["walk", "swim", "fly"]
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    
    $AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
    
    pass

#func _process(delta):
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass




func _on_Visibility_screen_exited():
    queue_free()
    pass # replace with function body
