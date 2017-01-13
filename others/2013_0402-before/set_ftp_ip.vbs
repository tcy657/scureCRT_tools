#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "ifconfig eth1:4" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-1 " & chr(126) & "]"
	crt.Screen.Send "ifconfig eth1:4 10.26.60.60/16" & chr(13)
	crt.Screen.Send "ifconfig eth1:4" & chr(13)
End Sub
