#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "kill -9 `ps -ef |grep RCU" & "|grep -v grep |awk '{print $2}'`" & chr(13)
	'kill -9 `ps -ef |grep top |grep -v grep |awk '{print $2}'`
	crt.Screen.WaitForString "[root@RCU845"
End Sub
      