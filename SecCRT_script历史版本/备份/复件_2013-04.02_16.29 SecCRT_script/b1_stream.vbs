#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'crt.Screen.Send "printportmap " & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "1" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetHWStatCounter 0,57; DbgGetHWStatCounter 0,9; DbgGetHWStatCounter 0,60; DbgGetHWStatCounter 0,11" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "DbgGetHWStatCounter 0,57; DbgGetHWStatCounter 0,9; DbgGetHWStatCounter 0,60; DbgGetHWStatCounter 0,11" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
End Sub
