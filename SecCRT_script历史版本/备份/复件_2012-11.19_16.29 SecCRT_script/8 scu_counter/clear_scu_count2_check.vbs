#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "1" & chr(13)
	crt.Screen.WaitForString "->"
 ' crt.Screen.Send "set_pm_alm_gather" & chr(13)
 ' crt.Screen.WaitForString "->"

	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetNPUCounter" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Sleep 500
	crt.Screen.Send "DbgGetNPUCounter" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Sleep 500
	crt.Screen.Send "DbgGetNPUCounter" & chr(13)
	crt.Screen.WaitForString "->"


	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetHWStatCounter" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Sleep 500
	crt.Screen.Send "DbgGetHWStatCounter" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Sleep 500
	crt.Screen.Send "DbgGetHWStatCounter" & chr(13)
	'crt.Screen.Send "DbgGetHWStatCounter 0,40; DbgGetHWStatCounter 0,56; DbgGetHWStatCounter 0,8; DbgGetHWStatCounter 0,37" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetPortDropCounter" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Sleep 500
	crt.Screen.Send "DbgGetPortDropCounter" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Sleep 500
	crt.Screen.Send "DbgGetPortDropCounter" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send chr(13)

End Sub
