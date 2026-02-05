extends Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Reset_Timer()
	pass # Replace with function body.

var sec = 0
var min = 0
var defsec = 30 # Default Seconds
var defmin = 1 # Default Minutes


func _on_timeout() -> void:
	if sec ==0:
		if min > 0:
			min -= 1
			sec = 60
	sec-=1
	
	
	
	$Label.text = String(sec)+":"+String(min)
	pass # Replace with function body.
	
func Reset_Timer():
	sec = defsec
	min = defmin
