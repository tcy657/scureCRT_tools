#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "no ip vrf CTVPN194-SD " & chr(13)
	crt.Screen.Send "ip vrf CTVPN194-SD" & chr(13)
	crt.Screen.Send "rd 4134:3070" & chr(13)
	crt.Screen.Send "route-target import 4134:307000" & chr(13)
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-vrf)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config)#"
	crt.Screen.Send "interface L3VE0/0/4" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " mac-address ace0.8131.0001" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send "!mtu-board 9600" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " !ip vrf forwarding CDMA-RAN" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip vrf forwarding CTVPN194-SD" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip address 6.29.196.1/30" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " no shutdown" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " bind slot master 6 slave 5 " & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " phb-select policy 1" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " commit" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " dhcp select relay" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip relay address 6.29.37.129" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip relay address 6.29.37.130" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip dhcp relay information strategy keep" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config)#"
	crt.Screen.Send "interface L3VE0/0/11" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " mac-address ace0.1722.1041" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send "!mtu-board 9600" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip vrf forwarding CTVPN194-SD" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " ip address 172.21.4.1/30" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " no shutdown" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " bind slot master 6 slave 13 " & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " phb-select policy 1" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " commit" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config)#"
	crt.Screen.Send "router bgp 64570" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-router)#"
	crt.Screen.Send " address-family ipv4 vrf CTVPN194-SD" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-router-af)#"
	crt.Screen.Send " redistribute connected" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-router-af)#"
	crt.Screen.Send " exit-address-family" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-router)#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-router)#"
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	crt.Screen.Send "show ip bgp vpnv4 vrf CTVPN194-SD" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	crt.Screen.Send "e" & chr(8) & "reboot rcu" & chr(13)
End Sub
