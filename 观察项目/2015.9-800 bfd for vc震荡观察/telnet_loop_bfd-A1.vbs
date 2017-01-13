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
  time_var=300000
  cmd="clear ldp sess *"
  wait_var="#"

'###S3  input var

'###S3.2  input wait_var

'###S4  do sth
Do Until 0 
	crt.Screen.Send "clear ldp sess *" & chr(13)
		'wait for 5 min
		crt.Sleep 300000
	
	 For x = 1 To 800
      crt.Screen.Send "show bfd session " & x & Chr(13)
	    crt.screen.WaitForString "Up"
	    crt.Sleep 5
   Next
   
   'crt.Screen.Send  Chr(13)

Loop

'###S4  over and tips 
MsgBox "命令重复结束，Byebye! ",,"系统提示"

End Sub
