#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "time telnet 127.1 2650" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "a" & chr(13)
	crt.Screen.WaitForString "Fiberhome-DUT>"
	crt.Screen.Send "en" & chr(13)
	crt.Screen.WaitForString "Fiberhome-DUT#"
	crt.Screen.Send "exit" & chr(13)
End Sub
