#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "telnet 10.26.0.22" & chr(13)
	crt.Screen.WaitForString "VxWorks login: "
	crt.Screen.Send "bmu852" & chr(13)
	crt.Screen.WaitForString "Password: "
	crt.Screen.Send "aaaabbbb" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	'crt.Screen.Send "printctrl 1" & chr(13)
	'crt.Screen.WaitForString "->"
End Sub
