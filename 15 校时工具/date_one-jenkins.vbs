#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  'for date many vtys, delay 100 ms
  crt.Sleep 100
	
	’校时
	crt.Screen.Send "sudo date -s " & Chr(34) & Now & chr(34) & chr(13)
  crt.Screen.WaitForString "password for maolong:"
  crt.Screen.Send "maolong"& chr(13)
  
  '重启jenkins服务
  crt.Screen.WaitForString "maolong-desktop:"
  crt.Screen.Send "sudo service jenkins restart"& chr(13)


End Sub
