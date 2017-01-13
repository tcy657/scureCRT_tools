#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "lcd d:/R845/rcu" & chr(13)
	crt.Screen.Send "lpwd" & chr(13)
		
	crt.Screen.Send "cd /lib" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	crt.Screen.Send "mv libnmprotobuf.so libnmprotobuf.so_old" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "mv libprotobuf.so.7 libprotobuf.so.7_old" & chr(13)
	crt.Screen.WaitForString "sftp> "
		
	crt.Screen.Send "put libnmprotobuf.so" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "put libprotobuf.so*" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	crt.Screen.Send "cd /home/scu" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	crt.Screen.Send "put R845*" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "chmod 755 R845*" & chr(13)
	crt.Screen.WaitForString "sftp> "
		
End Sub
