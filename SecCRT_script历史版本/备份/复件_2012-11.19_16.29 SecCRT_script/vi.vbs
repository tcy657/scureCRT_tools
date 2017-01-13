#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "vi run_env.ini" & chr(13)
	crt.Screen.WaitForString chr(126) & chr(27) & "[1;1H"
	crt.Screen.Send "irun_env.ini" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "NSM_CLIENT_BUNDLE_TIME 0" & chr(13)
	crt.Screen.Send "PF_SND_RCV_BUF_SIZE 300" & chr(27) & chr(27) & ":wq" & chr(13)
End Sub
