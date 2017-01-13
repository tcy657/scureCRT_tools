#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Function copy_file(file_name)
   	'copy "./scup1/file_name", "/tffs/file_name"
	crt.Screen.Send "copy " & chr(34) & "./scup1/" & file_name & chr(34) & "," & chr(34) & "/tffs/" & file_name & chr(34) & chr(13)
	crt.Screen.WaitForString "->"  
End Function



Sub Main
	Dim file
	file="ok" 
	
	crt.Screen.Send "dir" & chr(13)
	crt.Screen.WaitForString "->"  

	crt.Screen.Send "1" & chr(13)
	crt.Screen.WaitForString "->"
 	copy_file("SCUP1.zb")
 
	
	crt.Screen.Send "2" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("HX330_R845.xex")
		
	crt.Screen.Send "3" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("HX330B2_R845.xex")

	crt.Screen.Send "4" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("XelSdk.zb")
	
	crt.Screen.Send "5" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("XelApp.zb")
	
	crt.Screen.Send "6" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("SCUP1.zj")
	
	crt.Screen.Send "7" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("boardproj.cmd")
	
	crt.Screen.Send "8" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("vxWorks_8247a_256M.z")
	
	crt.Screen.Send "9" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("R845_1588.zb")
	
	crt.Screen.Send "10" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("bmulib_8247a.zb")
	
	crt.Screen.Send "11" & chr(13)
	crt.Screen.WaitForString "->"
	copy_file("param.xml")


'暂不用
'	crt.Screen.Send "12" & chr(13)
'	crt.Screen.WaitForString "->"
'	copy_file("bootrom_8247a_256M.bin")

'	crt.Screen.Send "h" & chr(13)
'	crt.Screen.WaitForString "->"    
'	crt.Screen.Send "dir" & chr(13)    
	
End Sub
