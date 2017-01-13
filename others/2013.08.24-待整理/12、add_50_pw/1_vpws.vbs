#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "mpls l2-circuit vc_1_101 101 3.192.1.111 control-word " & chr(13)
	crt.Screen.Send "mpls l2-circuit vc_1_102 102 3.192.1.112 control-word " & chr(13)
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "mpls bfd l2-circuit 101 local-discriminator 1 remote-discriminator 1 min-tx 50 min-rx 50" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "mpls bfd l2-circuit 102 local-discriminator 2 remote-discriminator 2 min-tx 50 min-rx 50" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "mpls vpws vc_1_101 101 " & chr(13)
	crt.Screen.Send " vpws-vc vc_1_101 " & chr(13)
	crt.Screen.WaitForString "A1(config-vpws)#"
	crt.Screen.Send " vpws-vc vc_1_102 " & chr(13)
	crt.Screen.WaitForString "A1(config-vpws)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "A1(config-vpws)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "A1(config-vpws)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "interface GE0/9/5.101" & chr(13)
	crt.Screen.Send " no shutdown" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " switchport" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " commit" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " uni stream-type 1" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " uni stream-id 1 ploy 1" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " uni stream-id 1 ovlan 101" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " mpls-l2-circuit vc_1_102 ethernet" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " mpls-l2-circuit vc_1_101 ethernet secondary" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " vc-mode revertive" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send " commit" & chr(13)
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "A1(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "A1(config)#"
	crt.Screen.Send "end" & chr(13)
End Sub
