#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'crt.Screen.Send "ver " & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "DbgGetHWStatCounter 0,44; DbgGetHWStatCounter 0,41; DbgGetHWStatCounter 0,42" & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetHWStatCounter 0,44; DbgGetHWStatCounter 0,41; DbgGetHWStatCounter 0,42" & chr(13)   
	crt.Screen.WaitForString "->"                                                                              	'crt.Screen.Send "DbgGetPortDropCounter " & chr(13)
End Sub
