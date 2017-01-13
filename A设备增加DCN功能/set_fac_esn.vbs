#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
' comments for PassWord Inputing.

'  Dim pass
'  pass=5 
  

	'打开DCN功能
	crt.Screen.Send "end" & chr(13)
	crt.screen.WaitForString("#")
		crt.Screen.Send "con t" & chr(13)
	crt.screen.WaitForString("#")
		crt.Screen.Send "set factory esn "
	crt.screen.WaitForString("#")
		crt.Screen.Send "enable dcn" & chr(13)
	crt.screen.WaitForString("#")
	crt.Screen.Send "end" & chr(13)
	crt.screen.WaitForString("#")
	
	'检查ESN设置结果
		crt.Screen.Send "sh factory esn" & chr(13)
	crt.screen.WaitForString("#")
	
	'删除ZEBOS
	  crt.Screen.Send "rm ZEBOS.CFG " 
	crt.screen.WaitForString("#")
		crt.Screen.Send "rm ZEBOS.CFG_TMP " 
	crt.screen.WaitForString("#")
	
	
	'重启RCU,以让DCN生效
	crt.Screen.Send "reboot rcu" 

End Sub