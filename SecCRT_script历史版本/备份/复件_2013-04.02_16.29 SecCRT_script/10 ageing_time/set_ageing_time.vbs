﻿#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'crt.Screen.Send "ver " & chr(13)
	'crt.Screen.WaitForString "->"
	
	'####S1 printportmap
	crt.Screen.Send "ApiSetAgeingTime 0,50 " & chr(13)
	crt.Screen.WaitForString "->"		

End Sub
