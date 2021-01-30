extends GraphNode


func _process(_delta):
	$VBoxContainer/TextEdit.rect_size = self.rect_size - Vector2(30,30)

func _on_Control_close_request():
	queue_free()

func _on_Control_resize_request(new_minsize):
	rect_size = new_minsize
