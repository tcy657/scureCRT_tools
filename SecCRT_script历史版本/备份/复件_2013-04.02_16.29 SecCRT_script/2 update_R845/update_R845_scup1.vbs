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
 	crt.Screen.Send "copy " & chr(34) & "./scup1/SCUP1.zb" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/HX330_R845.xex" & chr(34) & "," & chr(34) & "/tffs/HX330_R845.xex" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/HX330B2_R845.xex" & chr(34) & "," & chr(34) & "/tffs/HX330B2_R845.xex" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"

	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/XelSdk.zb" & chr(34) & "," & chr(34) & "/tffs/XelSdk.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "5" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/XelApp.zb" & chr(34) & "," & chr(34) & "/tffs/XelApp.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "6" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/SCUP1.zj" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "7" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "8" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/vxWorks_8247a_256M.z" & chr(34) & "," & chr(34) & "/tffs/vxWorks_8247a_256M.z" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "9" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/R845_1588.zb" & chr(34) & "," & chr(34) & "/tffs/R845_1588.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "10" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/bmulib_8247a.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib_8247a.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	
	crt.Screen.Send "11" & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scup1/param.xml" & chr(34) & "," & chr(34) & "/tffs/param.xml" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"

'暂不用
'	crt.Screen.Send "12" & chr(13)
'	crt.Screen.WaitForString "->"
'	crt.Screen.Send "copy " & chr(34) & "./scup1/bootrom_8247a_256M.bin" & chr(34) & "," & chr(34) & "/tffs/bootrom_8247a_256M.bin" & chr(34) & chr(13)
'	crt.Screen.WaitForString "->"

	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"    
'	crt.Screen.Send "dir" & chr(13)    
	
End Sub
