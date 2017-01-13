#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  Dim pass
  pass=7                                                                                   
  pass = crt.Dialog.Prompt("请输入登录的单盘号:", _
                                  "盘号", "7", False)
  If pass = "" then exit Sub

	'kill old telnet process
	'crt.Screen.Send "#wait for clear telnet, 3s." & chr(13)
	'crt.Screen.Send "kill -9 `ps -eaf " & chr(124) & "grep 10.26.0."& pass & chr(124) & "grep -b " & chr(8) & chr(8) & "v grep " & chr(124) & "awk '" & chr(123) & "print $2" & chr(125) & "'`" & chr(13)
	'crt.Screen.WaitForString "]"
	'crt.Screen.Send chr(13)
 
	'crt.sleep 3000	
   
  crt.Screen.Send "telnet 10.26.0." & pass & chr(13)
  If crt.screen.WaitForString("VxWorks login: ", 3) <> True Then
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
 'do sth
 'crt.Screen.Send "shellConfigDefaultValueSet( "AUTOLOGOUT","0")" & chr(13)
 crt.Screen.Send "shellConfigDefaultValueSet( " & chr(34)& "AUTOLOGOUT" & chr(34)& " ," & chr(34)& "0" & chr(34)& ")" & chr(13) 
 crt.Screen.WaitForString "->"
 'exit
 crt.Screen.Send "exit" & chr(13)
 crt.Screen.WaitForString "->"

End Sub
