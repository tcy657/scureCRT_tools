#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
'###S1 define var
  Dim src_port
  Dim dec_port
  Dim drc
  
  src_port=26 
  dec_port=27 
  drc=0                                                                                 

'###S2 get portmap
	crt.Screen.Send "printportmap" & chr(13)
	crt.Screen.WaitForString "->"

'###S3 input var
   'pass = crt.Dialog.Prompt("Panel NO(2~29):", "Enter Panel NO", "", True) 
  src_port = crt.Dialog.Prompt("请输入镜像源:", _
                                  "镜像源", "26", False)
  If src_port = "" then exit sub
  
  dec_port = crt.Dialog.Prompt("请输入镜像宿:", "镜像宿", "27", False)
  If dec_port = "" then exit Sub
  	
  drc = crt.Dialog.Prompt("请输入镜像方向(2-rx, 4-tx, 0-cancel):", "镜像方向", "0", False)
  If drc = "" then exit sub

'###S4 do our work
	crt.Screen.Send "ApiSetMirrorPort 0," & src_port & ","& dec_port & "," & drc & chr(13)

'  crt.Screen.WaitForString "sftp> "
'  If crt.screen.WaitForString("VxWorks login: ", 2) <> True Then
'      MsgBox "Failed to login!"
'      Exit Sub
'  End If

End Sub
