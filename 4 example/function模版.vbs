#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Function Delete_if(intf)
   	'回到”R1#“模式
	crt.Screen.Send "end" & chr(13)
	
	'开始配置
	crt.Screen.WaitForString "#"
	crt.Screen.Send "conf ter" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "inter " & intf & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "shutdown" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "comm" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "exit" & chr(13)
	crt.Screen.WaitForString "#"
	crt.Screen.Send "no inter " & intf & chr(13)
	crt.Screen.WaitForString "#"

	'回到”R1#“模式
	crt.Screen.Send "end" & chr(13)
End Function


Sub Main
  Dim intf
  intf="GE0/9/6"                                                                                  
  
  '输入端口参数
  intf = crt.Dialog.Prompt("请输入要删除的端口:", _
                                    "删除的端口", "GE0/9/6", False)
  If intf = "" then 
  	exit Sub
  End If
  
  '删除相应的端口
  '获取返回值：intf=Delete_if(intf)
  Delete_if(intf)
  '或Delete_if("GE0/9/6")
  
End Sub

