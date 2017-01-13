#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "lcd d:/R845/rcu" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "lpwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "cd /home/scu" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	crt.Screen.Send "mv R845 R845_old" & chr(13)
	crt.Screen.WaitForString "sftp> "
'	crt.Screen.Send "mv ZEBOS.CFG ZEBOS_old.CFG" & chr(13)
'	crt.Screen.WaitForString "sftp> "
	
	crt.Screen.Send "put -b R845" & chr(13)
	crt.Screen.WaitForString "sftp> "
'	crt.Screen.Send "put -b ZEBOS.CFG" & chr(13)
'	crt.Screen.WaitForString "sftp> "

	crt.Screen.Send "chmod 755 R845" & chr(13)
	crt.Screen.WaitForString "sftp> "

  crt.sleep 1000
	crt.Screen.Send "exit" & chr(13)

End Sub
