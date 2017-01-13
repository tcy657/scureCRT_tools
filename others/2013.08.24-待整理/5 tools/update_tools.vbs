#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'Setp1: change PC direction
	crt.Screen.Send "lcd d:/R845/kill_re_ch" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "lpwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'Step2: change DUT direction
	crt.Screen.Send "cd /bin" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'Step3: transport files to DUT
	crt.Screen.Send "put -b ??u_*" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'Step4: chang permission for files
	crt.Screen.Send "chmod 755 ??u_*" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'crt.Screen.Send "mv scu_wxw wxw_scu" & chr(13)
	'crt.Screen.WaitForString "sftp> "
		
End Sub
