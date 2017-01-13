#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
'#### S1 Change Dir
	crt.Screen.Send "lcd d:/R845/ftp/bakeup" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "lpwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "cd /home/bakeup" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
'#### S2 bakeup
'	crt.Screen.Send "mv R845 R845_old" & chr(13)
'	crt.Screen.WaitForString "sftp> "
'	crt.Screen.Send "mv ZEBOS.CFG ZEBOS_old.CFG" & chr(13)
'	crt.Screen.WaitForString "sftp> "

'#### S3 send file to PC	
	crt.Screen.Send "get -b *" & chr(13)
	crt.Screen.WaitForString "sftp> "

	'#### S3.2 send lib file to PC
	crt.Screen.Send "get -b /lib/libprotobuf.so.7" & chr(13)
	crt.Screen.WaitForString "sftp> "  
	
	crt.Screen.Send "get -b /lib/libnmprotobuf.so" & chr(13)
	crt.Screen.WaitForString "sftp> "  



'#### S4 Change mode
'	crt.Screen.Send "chmod 755 update_os.sh" & chr(13)
'	crt.Screen.WaitForString "sftp> "

'#### S5 Exit from sftp, be carefule
'  crt.sleep 1000
'	crt.Screen.Send "exit" & chr(13)

End Sub
