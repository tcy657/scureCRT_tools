#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main

	Dim params
	crt.Screen.Send "ll --color=never /home/bmu852/NpTar/" & chr(13)
	RawContents = crt.Screen.ReadString("[root")
	Contents = split(RawContents,vbcrlf)
	for i=2 to ubound(Contents)-1 
		 params = Split( Contents(i)," ", -1, 1 )
		 'Contents(i) = Mid(Contents(i),45)
		 Contents(i) = params(ubound(params))   
	Next
	
	'"请输入槽位:"
	Dim slot
  slot=6 
  slot = crt.Dialog.Prompt("请输入登录的单盘号:", _
                                  "盘号", "6", False)
  If slot = "" then exit sub


	'kill old telnet process
	crt.Screen.Send "#wait for clear telnet, 3s." & chr(13)
	crt.Screen.Send "kill -9 `ps -eaf " & chr(124) & "grep 10.26.0."& slot & chr(124) & "grep -b " & chr(8) & chr(8) & "v grep " & chr(124) & "awk '" & chr(123) & "print $2" & chr(125) & "'`" & chr(13)
	crt.Screen.WaitForString "]"
	crt.Screen.Send chr(13)
	
	crt.sleep 3000	

	'new telnet
	crt.Screen.Send  "telnet 10.26.0."& slot & chr(13)
	crt.Screen.WaitForString "VxWorks login: "
	crt.Screen.Send "bmu852" & chr(13)
	crt.Screen.WaitForString "Password: "
	crt.Screen.Send "aaaabbbb" & chr(13)
	crt.Screen.Send chr(13)
	

	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	
	'copy files to panel
	for i=2 to ubound(Contents)-1
	crt.Screen.Send "copy ""./NpTar/" & Contents(i) & """,""/tffs/"&Contents(i)&"""" & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "value = "
	REM crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	next


End Sub
