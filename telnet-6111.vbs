#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "telnet 127.1 6111" & chr(13)
	crt.Screen.WaitForString "Username: "
	crt.Screen.Send "fiberhome" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "fiberhome" & chr(13)
	crt.Screen.WaitForString "fiberhome#"
	crt.Screen.Send "sh ip os n" & chr(13)
End Sub
