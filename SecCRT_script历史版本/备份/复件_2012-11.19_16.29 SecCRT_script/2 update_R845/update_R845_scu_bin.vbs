#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "dir" & chr(13)
	crt.Screen.WaitForString "->"  
 	'crt.Screen.Send "copy " & chr(34) & "SCUP1.zb" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "param.xml" & chr(34) & "," & chr(34) & "/tffs/param.xml" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "HX330_R845.xex" & chr(34) & "," & chr(34) & "/tffs/HX330_R845.xex" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "XelSdk.zb" & chr(34) & "," & chr(34) & "/tffs/XelSdk.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "XelApp.zb" & chr(34) & "," & chr(34) & "/tffs/XelApp.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "SCUP1.zj" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zj" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "vxWorks_8247a_256M.z" & chr(34) & "," & chr(34) & "/tffs/vxWorks_8247a_256M.z" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "R845_1588.zb" & chr(34) & "," & chr(34) & "/tffs/R845_1588.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	'crt.Screen.Send "copy " & chr(34) & "bmulib_8247a.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib_8247a.zb" & chr(34) & chr(13)
	'crt.Screen.WaitForString "->"
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"    
	crt.Screen.Send "dir" & chr(13)    
	
End Sub
