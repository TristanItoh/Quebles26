extends Control

func _ready():
	Reset_Timer()
	pass # Replace with function body.

var sec = 0
var min = 0
var defsec = 30 # Default Seconds
var defmin = 1 # Default Minutes


func _on_timeout():
	if sec ==0:
		if min > 0:
			min -= 1
			sec = 60		#Pass the Timer
	sec-=1

	$Label.text = String(sec)+":"+String(min)
	print(String(sec)+":"+String(min))
	pass # Replace with function body.
	
func Reset_Timer():
	sec = defsec
	min = defmin
