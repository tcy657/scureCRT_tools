#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  ' turn on synchronous mode so we don't miss any data
  crt.Screen.Synchronous = True

	crt.Screen.Send "telnet 127.1 2650" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "a" & chr(13)
  crt.Screen.WaitForString ">"
  'crt.Screen.Send "en" & chr(13)
  'crt.Screen.WaitForString "#"   
	crt.Screen.Send "reboot rcu" & chr(13)  

End Sub
