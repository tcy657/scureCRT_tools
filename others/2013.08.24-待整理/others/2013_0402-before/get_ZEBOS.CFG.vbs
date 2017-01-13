#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'Setp1: change PC direction
	crt.Screen.Send "lcd d:/R845/ftp" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "lpwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'Step2: change DUT direction
	crt.Screen.Send "cd /home/scu" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'Step3: transport files to DUT
	crt.Screen.Send "get -b ZEBOS.CFG" & chr(13)
	crt.Screen.WaitForString "sftp> "
  
  'Step4: exit sftp
  crt.Screen.Send "exit" & chr(13)
	
End Sub
