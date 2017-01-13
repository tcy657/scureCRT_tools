#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main

	crt.Screen.Send "ll --color=never /home/bmu852/NpTar/" & chr(13)
	RawContents = crt.Screen.ReadString("[root")
  
  'for debug
	crt.Screen.Send "1、RawContents" & RawContents
	
	Contents = split(RawContents,vbcrlf)
  'for debug
	crt.Screen.Send "2、Contents" & Contents
	
	for i=2 to ubound(Contents)-1
		Contents(i) = Mid(Contents(i),45)
  'for debug
	crt.Screen.Send "3、Contents" & Contents
	next
	
  Dim slot
  slot=5                                                                                   
   'slot = crt.Dialog.Prompt("Panel NO(2~29):", "Enter Panel NO", "", True)
  slot = crt.Dialog.Prompt("请输入登录的单盘号:", _
                                  "盘号", "5", False)
  If slot = "" then exit sub

	'kill old telnet process
	crt.Screen.Send chr(13)
	crt.Screen.Send "kill -9 `ps -ef |grep 10.26.0."& slot & "|grep -v grep |awk '{print $2}'`" & chr(13)
	crt.Screen.WaitForString "[root"
	crt.Screen.Send chr(13)	

	'new telnet 10.26.0.X
  crt.Screen.Send "telnet 10.26.0." & slot & chr(13)
  If crt.screen.WaitForString("VxWorks login: ", 5) <> True Then
      MsgBox "Failed to login(VxWorks )!"
      Exit Sub
  End If
  
  crt.Screen.Send "bmu852" & chr(13)
  If crt.screen.WaitForString("Password: ", 5) <> True Then
      MsgBox "Failed to login(Password)!"
      Exit Sub
  End If
 crt.Screen.Send "aaaabbbb" & chr(13)
 crt.Screen.WaitForString "->"
 crt.Screen.Send chr(13)
 crt.Screen.WaitForString "->"
 crt.Screen.Send chr(13)

	'copy files to panel
	for i=2 to ubound(Contents)-1
	crt.Screen.Send "copy " & chr(34) & "./NpTar/" & Contents(i) & chr(34) & "," & chr(34) & "/tffs/" & Contents(i) & chr(34) & chr(13)
	crt.Screen.WaitForString "value = "
	REM crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	next


End Sub
