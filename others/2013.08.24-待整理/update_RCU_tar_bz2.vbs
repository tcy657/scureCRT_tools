#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	's1: change dir
	crt.Screen.Send "cd /home/scu/log" & chr(13)
	crt.Screen.WaitForString "log]"
	
	's2: tar
	crt.Screen.Send "tar -jxvf \(" & chr(9) & chr(13)
	crt.Screen.WaitForString "log]"
	
	's3:auto update
	crt.Screen.Send "sh aut" & chr(9) & chr(13)
End Sub
