#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "sh ldp mpls-l2-circuit"  & chr(13)
	crt.Screen.WaitForString "112       L2VE0/0/1  UP"
	
	crt.Screen.Send "!end"  & chr(13)
	crt.Screen.WaitForString "#"
	
End Sub
