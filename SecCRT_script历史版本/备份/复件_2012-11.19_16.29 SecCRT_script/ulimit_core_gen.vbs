#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "ulimit -a" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-"
	crt.Screen.Send "ulimit -c unlimited" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-"
	crt.Screen.Send "ulimit -a" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-"

End Sub
