#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

'Step1: define function, with var or no var
'use: copy_file fold,I

Dim rd_p2
rd_p2=100

Dim loop_num
loop_num=1

Function copy_file(fold, file_name)
  'copy "./scup1/file_name", "/tffs/file_name"
	crt.Screen.Send "copy " & chr(34) & "./" & fold & "/" & file_name & chr(34) & "," & chr(34) & "/tffs/" & file_name & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.WaitForString "value = "  
End Function


Function test_L3VE0_ip
	'wait 15 s
	'crt.Sleep 60000
	'crt.Screen.Send "telnet 127.1 2650" & chr(13)
	'crt.Screen.WaitForString "Password:"
	'crt.Screen.Send "a" & chr(13)
	'crt.Screen.WaitForString ">"
	'crt.Screen.Send "en" & chr(13)
	'crt.Screen.WaitForString "#"
	'crt.Screen.Send chr(13)
	'crt.Screen.WaitForString "#"
	
		'1.1 count times
	 crt.Screen.Send "!!!" & loop_num & chr(13)
	 crt.Screen.WaitForString "B2_QLGJ#"
	
	'check
	crt.Screen.Send "!!before" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	'
	crt.Screen.Send "show mpls vc" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	'
	crt.Screen.Send "show ip bgp vpnv4 vrf CTVPN194-SD" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	crt.Screen.Send chr(13)
	
	'start to config
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config)#"
	'change vrf
	crt.Screen.Send "no ip vrf CTVPN194-SD " & chr(13)
	crt.Screen.Send "ip vrf CTVPN194-SD" & chr(13)
	'crt.Screen.Send "rd 4134:3070" & chr(13)
	'crt.Screen.Send "route-target import 4134:307000" & chr(13)
	crt.Screen.Send "rd 4134:"& rd_p2 & chr(13)
	crt.Screen.Send "route-target import 4134:" & rd_p2 & chr(13)
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-vrf)#"
	crt.Screen.Send "exit" & chr(13)
	
	crt.Screen.WaitForString "B2_QLGJ(config)#"
	crt.Screen.Send "interface L3VE0/0/4" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ(config-if)#"
	crt.Screen.Send " mac-address ace0.8131.0001" & chr(13)
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
	
	'check result
	crt.Sleep 3000
	crt.Screen.Send "!!after" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	crt.Screen.Send "show ip bgp vpnv4 vrf CTVPN194-SD" & chr(13)
	crt.Screen.WaitForString "B2_QLGJ#"
	'crt.Screen.Send "exit" & chr(13)
	'crt.Screen.WaitForString "]"
	
	
	'for next time
	'crt.Screen.Send "reboot rcu" & chr(13) 
	'crt.Screen.WaitForString "]"
	
	'crt.Screen.Send  chr(13) 
	'crt.Screen.WaitForString "]"
	'wait for 10s
	crt.Sleep 10000
End Function


Sub Main
  ' turn on synchronous mode so we don't miss any data
  crt.Screen.Synchronous = True

'###S1  define var
  'Dim loop_num
  Dim num_var, time_var
  Dim cmd, wait_var

'###S2  init var
  loop_num=1
  num_var=2147483647 
  time_var=1000
  cmd="DbgGetL3Info"
  wait_var="->"

'###S3  input var
'###S3.1  input cmd_var
'  cmd = crt.Dialog.Prompt("1/4:输入命令", _
'                                  "执行的命令", "DbgGetL3Info", False)
'  If cmd = "" Then 
'  	MsgBox "命令为空，系统退出，Byebye! ",,"系统提示"
'  	exit Sub
'  End If
  	
'###S3.2  input wait_var
'  wait_var = crt.Dialog.Prompt("2/4:输入预期字符", _
'                                  "预期字符", "->", False)
' If wait_var = "" Then 
'  	MsgBox "参数为空，系统退出，Byebye! ",,"系统提示"
'  	exit Sub
'  End If

'###S3.3  input num_var
  num_var = crt.Dialog.Prompt("3/4:输入重复执行次数(0-99,0000 )", _
                                  "重复次数", "50000", False)
 If num_var = "" Then 
  	MsgBox "系统退出，Byebye! ",,"系统提示"
  	exit Sub
  End If
  If num_var = "0" then 
  	MsgBox "命令次数为0（或空），Byebye! ",,"系统提示"
  	exit Sub
  End If
  	
'###S3.4  set time_var
  time_var = crt.Dialog.Prompt("4/4:输入重复执行间隔时间(ms)", _
                                  "间隔时间", "1000", False)
  If time_var = "" Then 
  	MsgBox "系统退出，Byebye! ",,"系统提示"
  	exit Sub
  End If
  'If time_var = "" then time_var=1000

'###S4  do sth
Do Until loop_num > CLng(num_var)  
	'******* do sth *************
	'1.1 count times
	 'crt.Screen.Send "###" & loop_num & chr(13)
	 'crt.Screen.WaitForString "]"
	
	'1.2 do 
	rd_p2=loop_num
	test_L3VE0_ip   
	        
	'*******  do sth end ********
 
	crt.Sleep time_var
	loop_num=loop_num+1
Loop

'###S4  over and tips 
MsgBox "命令重复结束，Byebye! ",,"系统提示"

End Sub
