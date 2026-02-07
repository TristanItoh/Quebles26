extends Control

func _ready():
	Reset_Timer()

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

	$Label.text = str(sec)+": "+str(min)
	
func Reset_Timer():
	sec = defsec
	min = defmin
