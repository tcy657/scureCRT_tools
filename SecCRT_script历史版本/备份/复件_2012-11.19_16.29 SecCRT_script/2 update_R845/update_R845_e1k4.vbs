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
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/vxWorks_b.bin" & chr(34) & "," & chr(34) & "/tffs/vxWorks_b.bin" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/e1k4.zj" & chr(34) & "," & chr(34) & "/tffs/e1k4.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/E1K4.zb" & chr(34) & "," & chr(34) & "/tffs/E1K4.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "5" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/bmulib22_hard.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib22_hard.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "6" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/arrive.zj" & chr(34) & "," & chr(34) & "/tffs/arrive.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "7" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/arrive.zb" & chr(34) & "," & chr(34) & "/tffs/arrive.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "8" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./e1k4/E1K4_hard.zb" & chr(34) & "," & chr(34) & "/tffs/E1K4_hard.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"	
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"    
	crt.Screen.Send "dir" & chr(13)    
	
End Sub
