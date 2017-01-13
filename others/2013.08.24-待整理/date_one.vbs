#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  'for date many vtys, delay 100 ms
  crt.Sleep 100
	crt.Screen.Send "date -s " & Chr(34) & Now & chr(34) & chr(13)

'     crt.Screen.WaitForString "sftp> "
'  If crt.screen.WaitForString("]", 2) <> True Then
'      MsgBox "Failed to login!"
'      Exit Sub
'  End If

End Sub
