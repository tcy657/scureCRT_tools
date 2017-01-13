#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

'Step1: define function, with var or no var
Function copy_file(fold, file_name)
  'copy "./scup1/file_name", "/tffs/file_name"
	crt.Screen.Send "copy " & chr(34) & "./" & fold & "/" & file_name & chr(34) & "," & chr(34) & "/tffs/" & file_name & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.WaitForString "value = "  
End Function


Function test_L3VE0
  'shutdown
  crt.Screen.Send "con t" & chr(13)
  crt.Screen.WaitForString "#"
	crt.Screen.Send "interface  GE0/1/5.31 "  & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "shutdown" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "commit"  & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "end " & chr(13)
	crt.Screen.WaitForString "#"
	
	'wait for 5s
	crt.sleep 5000
	
	'no shutdown
  crt.Screen.Send "con t" & chr(13)
  crt.Screen.WaitForString "#"
	crt.Screen.Send "interface  GE0/1/5.31 "  & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "no shutdown" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "commit"  & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "end " & chr(13)
	crt.Screen.WaitForString "#"
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
	 crt.Screen.Send "!!!" & loop_num & "," & Now & Chr(13)
	 crt.Screen.WaitForString "#"
	
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
