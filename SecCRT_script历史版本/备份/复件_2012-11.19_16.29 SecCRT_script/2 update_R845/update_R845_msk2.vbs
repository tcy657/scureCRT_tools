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
 	crt.Screen.Send "copy " & chr(34) & "./msk2/vxWorks_b.bin" & chr(34) & "," & chr(34) & "/tffs/vxWorks_b.bin" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msk2/top_msk2.zj" & chr(34) & "," & chr(34) & "/tffs/top_msk2.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msk2/ProjectMSK2.zb" & chr(34) & "," & chr(34) & "/tffs/ProjectMSK2.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msk2/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "5" & chr(13)
	crt.Screen.WaitForString "->"
 	crt.Screen.Send "copy " & chr(34) & "./msk2/bmulib22.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib22.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"    
	crt.Screen.Send "dir" & chr(13)    
	
End Sub
