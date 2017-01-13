#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  Dim pass
  pass=5                                                                                   
   'pass = crt.Dialog.Prompt("Panel NO(2~29):", "Enter Panel NO", "", True)
  pass = crt.Dialog.Prompt("请输入登录的单盘号:", _
                                  "盘号", "5", False)
  If pass = "" then exit sub
 
  crt.Screen.Send "telnet 10.26.0." & pass & chr(13)
  If crt.screen.WaitForString("VxWorks login: ", 2) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If
  
  crt.Screen.Send "bmu852" & chr(13)
  If crt.screen.WaitForString("Password: ", 2) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If
 crt.Screen.Send "aaaabbbb" & chr(13)
 crt.Screen.WaitForString "->"
 crt.Screen.Send chr(13)
 crt.Screen.WaitForString "->"
 crt.Screen.Send chr(13)
 'crt.Screen.Send "printctrl " & chr(13)
 'crt.Screen.WaitForString "->"

 'Select Case pass
 '   Case "2"
 '      crt.Screen.Send "telnet 10.26.0.2" & chr(13)     
 '   Case "3"
 '      crt.Screen.Send "telnet 10.26.0.3" & chr(13)
 '  
 '   Case Else
 '      msgbox " Your NO is not between 2~29! " ,, "系统提示"
 ' End Select

End Sub
