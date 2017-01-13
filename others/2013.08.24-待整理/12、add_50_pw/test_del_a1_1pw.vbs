#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "a" & chr(13)
	crt.Screen.WaitForString "A1>"
	crt.Screen.Send "en" & chr(13)
	crt.Screen.WaitForString "A1#"
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "inter GE0/9/5.103" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send "no mpls-l2-circuit vc_1_104 ethernet secondary" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send "no mpls-l2-circuit vc_1_103 ethernet" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send "shu" & chr(9) & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "no int GE0/9/5.103" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "no mpls vpws vc_1_103 " & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "no mpls bfd l2-circuit 104 local-discriminator 104 remote-discriminator 104 min-tx 50 min-rx 50" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & "3" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "no mpls l2-circuit vc_1_104 104 3.192.1.112 control-word " & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "no mpls l2-circuit vc_1_103 103 3.192.1.111 control-word " & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "A1#"
	crt.Screen.Send "exit" & chr(13)
End Sub
