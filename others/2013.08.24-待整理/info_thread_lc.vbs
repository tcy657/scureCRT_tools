#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	Dim nIndex
	Dim num_op
  num_op = crt.Dialog.Prompt("输入重复执行次数(0-2147483647 )", _
                                  "重复次数", "500000", False)
 If num_op = "" Then 
  	MsgBox "系统退出，Byebye! ",,"系统提示"
  	exit Sub
  End If
  If num_op = "0" then 
  	MsgBox "命令次数为0（或空），Byebye! ",,"系统提示"
  	exit Sub
  End If	
		
	For nIndex = 1 to num_op
     '********* do sth *************
      'info thread
      crt.Screen.Send "info thread "  & chr(13)
    	crt.Screen.WaitForString "(gdb)"
    	
    	'thread XX
      crt.Screen.Send "thread " & nIndex & chr(13)
    	crt.Screen.WaitForString "(gdb)"
    	'bt
    	crt.Screen.Send "bt" & chr(13) 
    	
    	'wait for 0.5s
    	crt.Sleep 500
  Next
	
End Sub
