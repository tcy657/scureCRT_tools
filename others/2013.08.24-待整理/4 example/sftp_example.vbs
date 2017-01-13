#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "cd /home/scu" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "chmod 755 R834545" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "exit" & chr(13)
End Sub
