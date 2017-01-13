#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  Dim pass
  pass="GE0/9/1"                                                                                  
  pass = crt.Dialog.Prompt("请输入要删除的端口:", _
                                  "删除的端口", "GE0/9/1", False)
  If pass = "" then 
  	exit Sub
  End If
  
	'回到”R1#“模式
	crt.Screen.Send "end" & chr(13)
	
	'开始配置
	crt.Screen.WaitForString "#"
	crt.Screen.Send "conf ter" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "inter " & pass & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "shutdown" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "comm" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "no inter " & pass & chr(13)
	crt.Screen.WaitForString "#"

	'回到”R1#“模式
	crt.Screen.Send "end" & chr(13)

End Sub

