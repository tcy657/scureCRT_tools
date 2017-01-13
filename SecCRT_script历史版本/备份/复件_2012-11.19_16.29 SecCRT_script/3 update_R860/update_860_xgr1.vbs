#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "copy " & chr(34) & "./xgr1/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/param.xml" & chr(34) & "," & chr(34) & "/tffs/param.xml" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/HX330_R860.xex" & chr(34) & "," & chr(34) & "/tffs/HX330_R860.xex" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/XelApp.zb" & chr(34) & "," & chr(34) & "/tffs/XelApp.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/XelSdk.zb" & chr(34) & "," & chr(34) & "/tffs/XelSdk.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/vxWorks_8247a_256M.z" & chr(34) & "," & chr(34) & "/tffs/vxWorks_8247a_256M.z" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/XGPHY_firmware.bin" & chr(34) & "," & chr(34) & "/tffs/XGPHY_firmware.bin" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/XGR1.zj" & chr(34) & "," & chr(34) & "/tffs/XGR1.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/bmulib_8247a.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib_8247a.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/LinkOam_R860.zb" & chr(34) & "," & chr(34) & "/tffs/LinkOam_R860.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/appl_NP.zb" & chr(34) & "," & chr(34) & "/tffs/appl_NP.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/XGR1_1588.zb" & chr(34) & "," & chr(34) & "/tffs/XGR1_1588.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/R86x_altera.zj" & chr(34) & "," & chr(34) & "/tffs/R86x_altera.zj" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./xgr1/xgr1.zb" & chr(34) & "," & chr(34) & "/tffs/xgr1.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "h" & chr(13)
End Sub
