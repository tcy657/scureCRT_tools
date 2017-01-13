#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	Dim var
	var=crt.Window.Caption
	crt.Screen.Send var & chr(13)
	crt.Screen.WaitForString "[root@RCU845-1 " & chr(126) & "]"
End Sub

'test