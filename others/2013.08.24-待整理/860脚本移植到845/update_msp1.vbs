#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "xdelete " & chr(34) & "/tffs/" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "ProjectMSQ1.zb" & chr(34) & ", " & chr(34) & "/tffs/ProjectMSQ1.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "bmulib22.zb" & chr(34) & ", " & chr(34) & "/tffs/bmulib22.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "boardproj.cmd" & chr(34) & ", " & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"	
	crt.Screen.Send "copy " & chr(34) & "top_msp1.zj" & chr(34) & ", " & chr(34) & "/tffs/top_msp1.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "vxWorks_b.bin" & chr(34) & ", " & chr(34) & "/tffs/vxWorks_b.bin" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.Send "reboot" & chr(13)
End Sub
