#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "sh clns n" & chr(13)
	crt.Screen.WaitForString "Fiberhome-"
	crt.Screen.Send "sh tne board" & chr(13)
	crt.Screen.WaitForString "Fiberhome-"
	crt.Screen.Send "sh tne-statics service-id 0"  & chr(13)
End Sub
