﻿#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	loop_num=1
	num_var=30
	
	'###S3.3  input num_var
  num_var = crt.Dialog.Prompt("1/1:次数(0-2147483647 )", _
                                  "重复", "30", False)
 If num_var = "" Then 
  	MsgBox "系统退出，Byebye! ",,"系统提示"
  	exit Sub
  End If
  If num_var = "0" then 
  	MsgBox "命令次数为0（或空），Byebye! ",,"系统提示"
  	exit Sub
  End If
	
	crt.Screen.Send "end" & chr(13)
	crt.Screen.Send "con t" & chr(13)
	crt.Screen.WaitForString "#"
	
	Do Until loop_num > CLng(num_var)  
	'******* do sth *************
	'1.1 count times
	crt.Screen.Send "mpls bfd l2-circuit " & loop_num & " local-discriminator  " & loop_num & " remote-discriminator  " & loop_num & " min-tx 50 min-rx 50  " & chr(13)
	crt.Screen.WaitForString "#"
	
	crt.Sleep 15
	'crt.Screen.Send vbcr         
	'*******  do sth end ********
	loop_num=loop_num+1
Loop

	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "#"
	
	
End Sub
