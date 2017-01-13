#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  '要求先minicom -s设置当前所用为串口1
  '再start minicom
	'crt.Screen.Send "minicom" & chr(13)

	crt.Screen.WaitForString "login: " 
	crt.Screen.Send "root" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "root" & chr(13)

End Sub
