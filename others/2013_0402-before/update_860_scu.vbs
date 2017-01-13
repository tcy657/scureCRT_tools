#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "copy" & chr(34) & "./scur1/vxWorks_8247e_128M.z" & chr(34) & "," & chr(34) & "/tffs/vxWorks_8247e_128M.z" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & " " & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/SCUR1.zb" & chr(34) & "," & chr(34) & "/tffs/SCUR1.zb" & chr(34) & " " & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/ptpHubXcuj2.zb" & chr(34) & "," & chr(34) & "/tffs/ptpHubXcuj2.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/bmulib_8247a.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib_8247a.zb" & chr(34) & " " & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/bcmsdk.zb" & chr(34) & "," & chr(34) & "/tffs/bcmsdk.zb" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/scur1_fp.zx" & chr(34) & "," & chr(34) & "/tffs/scur1_fp.zx" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "copy " & chr(34) & "./scur1/xcuj2_ptn.zx" & chr(34) & "," & chr(34) & "/tffs/xcuj2_ptn.zx" & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	crt.Screen.Send "h" & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.Send "reboot" & chr(13)
End Sub
