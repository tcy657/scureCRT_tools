﻿#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'crt.Screen.Send "ver " & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "DbgGetHWStatCounter 0,28; DbgGetHWStatCounter 0,25; DbgGetHWStatCounter 0,26" & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetHWStatCounter 0,28; DbgGetHWStatCounter 0,25; DbgGetHWStatCounter 0,26" & chr(13)  	
	crt.Screen.WaitForString "->"                                                                             	'crt.Screen.Send "DbgGetPortDropCounter " & chr(13)
End Sub