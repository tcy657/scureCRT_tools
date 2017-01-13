#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "[PE1]"
	crt.Screen.Send "display ip os n" & chr(13)
	crt.Screen.WaitForString "[PE1]"
	crt.Screen.Send "displayh" & chr(8) & " bgp n" & chr(13)
End Sub
