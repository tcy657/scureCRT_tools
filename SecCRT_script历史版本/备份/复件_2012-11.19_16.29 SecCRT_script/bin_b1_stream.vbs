#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main

'##S1: drop
	crt.Screen.Send "DbgGetPortDropCounter " & chr(13)
	crt.Screen.WaitForString "->"

'##S2: printportmap
	crt.Screen.Send "printportmap " & chr(13)
	crt.Screen.WaitForString "->"

'##S3: stream
	crt.Screen.Send "DbgGetHWStatCounter 0,35;DbgGetHWStatCounter 0,32;DbgGetHWStatCounter 0,33" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
End Sub
