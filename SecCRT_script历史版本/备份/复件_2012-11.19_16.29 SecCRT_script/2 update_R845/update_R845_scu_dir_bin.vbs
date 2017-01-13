#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "dir" & chr(13)
	crt.Screen.WaitForString "->"  
 	'crt.Screen.Send "copy " & chr(34) & "./scu/SCUP1.zb" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scu/param.xml" & chr(34) & "," & chr(34) & "/tffs/param.xml" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/HX330_R845.xex" & chr(34) & "," & chr(34) & "/tffs/HX330_R845.xex" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scu/XelSdk.zb" & chr(34) & "," & chr(34) & "/tffs/XelSdk.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/XelApp.zb" & chr(34) & "," & chr(34) & "/tffs/XelApp.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/SCUP1.zj" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zj" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/vxWorks_8247a_256M.z" & chr(34) & "," & chr(34) & "/tffs/vxWorks_8247a_256M.z" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/R845_1588.zb" & chr(34) & "," & chr(34) & "/tffs/R845_1588.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "./scu/bmulib_8247a.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib_8247a.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"    
	crt.Screen.Send "dir" & chr(13)    
	
End Sub
