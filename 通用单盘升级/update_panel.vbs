#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

'###S1  define var
  Dim label_sys
'###S1  end 

'###S2  init var
  label_sys="root@"
'###S2  end 

Function untar_cab
  crt.Screen.Send "cd /home/bmu852" & chr(13)
	crt.Screen.Send "rm -rf ./NpTar" & chr(13)
	crt.Screen.Send "mkdir NpTar" & chr(13)
	crt.Screen.Send "chmod 777 NpTar" & chr(13)
	crt.Screen.WaitForString label_sys
	crt.Screen.Send "/home/nmu/cabextract \(" & chr(9) & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString label_sys
	
	crt.Screen.Send "mv ./R*/* ./NpTar/" & chr(13)
	crt.Screen.Send "mv boardproj.cmd ./NpTar/" & chr(13)
	crt.Screen.WaitForString label_sys
	
	'wait for 500ms
	crt.sleep 500
End Function

Function upload_Files
	Dim params
	crt.Screen.Send "ll --color=never /home/bmu852/NpTar/" & chr(13)
	RawContents = crt.Screen.ReadString("[root@")
	crt.Screen.Send "#5/0-5,test"& RawContents & chr(13)	
	Contents = split(RawContents,vbcrlf)
	crt.Screen.Send "#4/0-4,test" & chr(13)	
	For i=2 to ubound(Contents)-1 
		 '以空格为界，分割成多段
		 params = Split( Contents(i)," ", -1, 1 )
		 crt.Screen.Send "#3/0-3,test" & params & chr(13)	
		 'Contents(i) = Mid(Contents(i),45)
		 '取最后一个
		 Contents(i) = params(ubound(params))   
		 crt.Screen.Send "#2/3,test" & Contents(i) & chr(13)	
	Next
	
	
  Dim slot
  slot=6 
  slot = crt.Dialog.Prompt("请输入登录的单盘号:", _
                                  "盘号", "6", False)
  If slot = "" then exit Function

  'telnet 10.26.0.X
	'kill old telnet process
	crt.Screen.Send chr(13)
	crt.Screen.Send "kill -9 `ps -af " & chr(124) & "grep 10.26.0."& slot & chr(124) & "grep -b " & chr(8) & chr(8) & "v grep " & chr(124) & "awk '" & chr(123) & "print $2" & chr(125) & "'`" & chr(13)
	crt.Screen.WaitForString "root@"
	crt.Screen.Send chr(13)	

	crt.sleep 3000	

	'new telnet
	crt.Screen.Send  "telnet 10.26.0."& slot & chr(13)
	crt.Screen.WaitForString "VxWorks login: "
	crt.Screen.Send "bmu852" & chr(13)
	crt.Screen.WaitForString "Password: "
	crt.Screen.Send "aaaabbbb" & chr(13)	

	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	
	'crt.Screen.Send "#0./NpTar/" & Contents(2) & chr(13)
	''copy files to panel
	'for i=2 to ubound(Contents)-1
	''crt.Screen.Send "copy ""./NpTar/" & Contents(i) & """,""/tffs/"&Contents(i)&"""" & chr(13)
	''crt.Screen.Send "#test_copy ""./NpTar/" & Contents(i) & """,""/tffs/"&Contents(i)&"""" & chr(13)
	'crt.Screen.Send "#1./NpTar/" & Contents(i) & chr(13)
	''crt.Screen.WaitForString "value = "
	'REM crt.Screen.WaitForString "->"
	'crt.Screen.Send chr(13)
	'Next
	
	
  crt.Screen.Send "#0,test" & chr(13)	
  'copy files to panel
	for i=2 to ubound(Contents)-1 
	crt.Screen.Send "#1,test" & chr(13)	
	crt.Screen.Send "#copy ""./NpTar/" & Contents(i) & """,""/tffs/"&Contents(i)&"""" & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "value = "
	REM crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	next
End Function

Sub Main
  'Step 1 
  untar_cab
  
  'Step 2
  upload_Files

End Sub

