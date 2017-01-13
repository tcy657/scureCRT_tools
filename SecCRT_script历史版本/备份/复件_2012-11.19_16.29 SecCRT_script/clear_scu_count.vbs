#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "1" & chr(13)
	crt.Screen.WaitForString "->"
  crt.Screen.Send "DbgShowVpws" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send " DbgGetL3VpnInfo 0,1" & chr(13)
	crt.Screen.WaitForString "->"


	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetEncapTunnelInfo" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetHWStatCounter" & chr(13)
	crt.Screen.WaitForString "->"


	crt.Screen.Send "5" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "DbgGetPortDropCounter" & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send chr(13)

End Sub
