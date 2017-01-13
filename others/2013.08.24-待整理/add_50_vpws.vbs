﻿#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

'Step1: define function, with var or no var
'use: copy_file fold,I

Function copy_file(fold, file_name)
  'copy "./scup1/file_name", "/tffs/file_name"
	crt.Screen.Send "copy " & chr(34) & "./" & fold & "/" & file_name & chr(34) & "," & chr(34) & "/tffs/" & file_name & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.WaitForString "value = "  
End Function


Function test_L3VE0
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
End Function


Sub Main
  ' turn on synchronous mode so we don't miss any data
  crt.Screen.Synchronous = True

'###S1  define var
  Dim loop_num
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
  num_var = crt.Dialog.Prompt("3/4:输入重复执行次数(0-2147483647 )", _
                                  "重复次数", "5000", False)
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
	 crt.Screen.Send "###" & loop_num & chr(13)
	 crt.Screen.WaitForString "]"
	
	'1.2 do 
	test_L3VE0   
	
	'crt.Sleep 1000
	crt.Screen.Send vbcr         
	'*******  do sth end ********
 
	crt.Sleep time_var
	loop_num=loop_num+1
Loop

'###S4  over and tips 
MsgBox "命令重复结束，Byebye! ",,"系统提示"

End Sub
