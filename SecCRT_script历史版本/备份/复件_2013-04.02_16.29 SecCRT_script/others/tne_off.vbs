﻿#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "#"

	crt.Screen.Send "tne-switch mode 1" & chr(13)
	crt.Screen.WaitForString "#"


	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "#"
End Sub
