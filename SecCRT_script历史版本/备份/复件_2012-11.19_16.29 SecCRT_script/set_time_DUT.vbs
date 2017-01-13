#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
'  Dim pass
'  pass=5                                                                                   
'   'pass = crt.Dialog.Prompt("Panel NO(2~29):", "Enter Panel NO", "", True) 
'  pass = crt.Dialog.Prompt("请输入文件名:", _
'                                  "文件名(*.pcap)", "tcpdump", False)
'  If pass = "" then exit sub

	crt.Screen.Send "date -s " & Chr(34) & Now & chr(34) & chr(13)
'     crt.Screen.WaitForString "sftp> "
'  If crt.screen.WaitForString("]", 2) <> True Then
'      MsgBox "Failed to login!"
'      Exit Sub
'  End If

End Sub
