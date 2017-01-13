#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "cd /root" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-2 " & chr(126) & "]"
	crt.Screen.Send "ln -s /home/scu" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-2 " & chr(126) & "]"
	crt.Screen.Send "ln -s /home/nmu" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-2 " & chr(126) & "]"
	crt.Screen.Send "ln -s /home/bmu852" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-2 " & chr(126) & "]"
	crt.Screen.Send "ln -s /dev/shm/og" & chr(8) & chr(8) & "log" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-2 " & chr(126) & "]"
	crt.Screen.Send "ll" & chr(13)
End Sub
