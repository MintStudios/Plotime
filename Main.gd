extends Control

var sgn = load("res://SimpleGraphNode.tscn")
var initial_position = Vector2(40,40)
var node_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var node = sgn.instance()
	node.offset += initial_position + (node_index * Vector2(20,20))
	node.title += '-' + str(node_index)
	$GraphEdit.add_child(node)
	node_index += 1


func _on_GraphEdit_connection_request(from, from_slot, to, to_slot):
	$GraphEdit.connect_node(from, from_slot, to, to_slot)
