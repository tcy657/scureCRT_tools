#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

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
'###S3.1  input num_var
  num_var = crt.Dialog.Prompt("3/4:输入重复执行次数(0-2147483647 )", _
                                  "重复次数", "500000", False)
 If num_var = "" Then 
  	MsgBox "系统退出，Byebye! ",,"系统提示"
  	exit Sub
  End If
  If num_var = "0" then 
  	MsgBox "命令次数为0（或空），Byebye! ",,"系统提示"
  	exit Sub
  End If
  	
'###S4  do sth
Do Until loop_num > CLng(num_var)  
	'count
   crt.Screen.Send "###loop_op: " & loop_num & chr(13)
   crt.Screen.WaitForString "]"  
	
	'do sth
	crt.Screen.Send "telnet 127.1 2650" & chr(13)
	crt.Screen.WaitForString "Password:"
	crt.Screen.Send "a" & chr(13)
	crt.Screen.WaitForString ">"
	crt.Screen.Send "en" & chr(13)
	crt.Screen.WaitForString "#"
	
	crt.Screen.Send "!" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "!!" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "!!!" & chr(13)
	crt.Screen.WaitForString "#"
	
	crt.Screen.Send "exit" & Chr(13)
	crt.Screen.WaitForString "]"
 
	crt.Sleep 500
	loop_num=loop_num+1
Loop

'###S4  over and tips 
MsgBox "命令重复结束，Byebye! ",,"系统提示"

End Sub
