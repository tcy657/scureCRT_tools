#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "SD-JN-KFQ-RAN-1.MAN#"
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "SD-JN-KFQ-RAN-1.MAN(config)#"
	crt.Screen.Send "inter L2VE0/2/5.34" & chr(13)
	crt.Screen.WaitForString "SD-JN-KFQ-RAN-1.MAN(config-if)#"
	crt.Screen.Send "no shutdown" & chr(13)
	crt.Screen.WaitForString "SD-JN-KFQ-RAN-1.MAN(config-if)#"
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "SD-JN-KFQ-RAN-1.MAN#"
	crt.Screen.Send "sh mpls vc" & chr(13)
End Sub