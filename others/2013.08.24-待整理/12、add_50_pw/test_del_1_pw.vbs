#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "int L3VE0/0/2" & chr(13)
	crt.Screen.WaitForString "(config-if)#"
	crt.Screen.Send "no ip vrf forwarding CDMA-RAN" & chr(13)
	crt.Screen.WaitForString "(config-if)#"
	crt.Screen.Send "shutdown" & chr(9) & chr(9) & chr(13)
	crt.Screen.WaitForString "(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "no inter L3VE0/0/2" & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "inter L2VE0/0/2" & chr(13)
	crt.Screen.WaitForString "(config-if)#"
	crt.Screen.Send "no mpls-l2-circuit vc_1_103 ethernet" & chr(13)
	crt.Screen.WaitForString "(config-if)#"
	crt.Screen.Send "shutdown" & chr(9) & chr(13)
	crt.Screen.WaitForString "(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "no inter L2VE0/0/2" & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "no mpls vpws vc_1_103 " & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "no mpls l2-circuit vc_1_103 103 3.192.1.101 control-word " & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "#"
End Sub
