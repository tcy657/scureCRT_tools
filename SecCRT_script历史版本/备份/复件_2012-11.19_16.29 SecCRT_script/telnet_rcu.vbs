#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
' comments for PassWord Inputing.

'  Dim pass
'  pass=5 
  
	crt.Screen.Send "telnet 127.0.0.1 2650" & chr(13)
  If crt.screen.WaitForString("Password:", 5) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If

'  pass = crt.Dialog.Prompt("请输入密码:", _
'                                  "密码输入", "a", True)
'  If pass = "" then exit sub
'	crt.Screen.Send pass & chr(13) 

  crt.Screen.Send "a" & chr(13) 
  If crt.screen.WaitForString(">", 3) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If

	crt.Screen.Send "en" & chr(13)
  If crt.screen.WaitForString("#", 3) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If

End Sub