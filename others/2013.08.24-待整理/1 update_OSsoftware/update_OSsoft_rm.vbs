#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
'###S1: chang direction
	crt.Screen.Send "cd /home" & chr(13)
	crt.Screen.WaitForString "]"

'###S2: rm files
	crt.Screen.Send "rm nmu.tgz" & chr(13)
	crt.Screen.WaitForString "]"

	crt.Screen.Send "rm scu.tgz" & chr(13)
	crt.Screen.WaitForString "]"

	crt.Screen.Send "rm sys.tgz" & chr(13)
	crt.Screen.WaitForString "]"

	crt.Screen.Send "rm update_os.sh" & chr(13)
	crt.Screen.WaitForString "]"

'###S3: make sure
	crt.Screen.Send "ll" & chr(13)
	crt.Screen.WaitForString "]"
End Sub
