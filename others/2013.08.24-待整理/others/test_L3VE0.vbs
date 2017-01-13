#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "telnet 127.1 2650" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "a" & chr(13)
	crt.Screen.WaitForString "B1>"
	crt.Screen.Send "en" & chr(13)
	crt.Screen.WaitForString "B1#"
	crt.Screen.Send "reboot rcu" & chr(13)
	crt.Screen.WaitForString "[root@RCU845-1 " & chr(126) & "]"
	
	'wait 15 s
	crt.Sleep 60000
	crt.Screen.Send "telnet 127.1 2650" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "a" & chr(13)
	crt.Screen.WaitForString "B1>"
	crt.Screen.Send "en" & chr(13)
	crt.Screen.WaitForString "B1#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B1#"
	
	'start to config
	crt.Screen.Send "sh ip bgp vpnv4 vrf CDMA-RAN  53.1.2.1" & chr(13)
	crt.Screen.WaitForString "B1#"
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send "!!!!!!!!!B1" & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send "mpls l2-circuit vc_1_103 103 3.192.1.101 control-word" & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send " vlan-rx-tx-op rx-tag 1 tx-tag 1 tx-vlan-id 103 tx-vlan-pri 0 tag-type 0 l2-circuit vc_1_103 " & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send "mpls vpws vc_1_103 103 " & chr(13)
	crt.Screen.WaitForString "B1(config-vpws)#"
	crt.Screen.Send " vpws-vc vc_1_103 " & chr(13)
	crt.Screen.WaitForString "B1(config-vpws)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B1(config-vpws)#"
	crt.Screen.Send "exit " & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send "interface L2VE0/0/2" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " no shutdown" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " switchport" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " !commit" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " uni rx-tag recongnize" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " uni tx-tag 2" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " uni stream-id 1 ploy 1" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " mpls-l2-circuit vc_1_103 ethernet" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " commit" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send "interface L3VE0/0/2" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " no shutdown" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " mac-address 8888.8888.8888" & chr(13)
	crt.Screen.Send " ip vrf forwarding CDMA-RAN" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " ip address 53.1.2.1/24" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send " phb-select policy 1" & chr(13)
	crt.Screen.WaitForString " phb-select policy 1B1(config-if)#"
	crt.Screen.Send " commit" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B1(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "B1(config)#"
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "B1#"
	
	'check result
	crt.Sleep 3000
	crt.Screen.Send "!!!!!!!!!!!!!!" & chr(13)
	crt.Screen.WaitForString "B1#"
	crt.Screen.Send "sh ip bgp vpnv4 vrf CDMA-RAN  53.1.2.1" & chr(13)
	crt.Screen.WaitForString "B1#"
	crt.Screen.Send "exit" & chr(13)
End Sub
