#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "dir" & chr(13)
	crt.Screen.WaitForString "->"  

 	crt.Screen.Send "1" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msp1/vxWorks_b.bin" & chr(34) & "," & chr(34) & "/tffs/vxWorks_b.bin" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msp1/top_msp1.zj" & chr(34) & "," & chr(34) & "/tffs/top_msp1.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msp1/ProjectMSP1.zb" & chr(34) & "," & chr(34) & "/tffs/ProjectMSP1.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msp1/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "5" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msp1/bmulib22.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib22.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"    
	crt.Screen.Send "dir" & chr(13)    
	
End Sub
