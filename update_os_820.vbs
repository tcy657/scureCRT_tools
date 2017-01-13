#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'space
	crt.Screen.WaitForString "autoboot in 2 seconds"
	crt.Screen.Send chr(32) & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	'/*升级 uboot*/
	crt.Screen.Send "update b" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "reset" & chr(13)
	
	'space
	crt.Screen.WaitForString "autoboot in 2 seconds"
	crt.Screen.Send chr(32) & chr(13) 
	crt.Screen.WaitForString "QorIQ=> "
	'/*升级设备树 dtb*/	
	crt.Screen.Send " update d" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send " update s" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "update k" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "update w" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "protect off  0xe3800000 +0xc800000" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "erase 0xe3800000 +0xc800000" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "update a" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "update t" & chr(13)
	crt.Screen.WaitForString "QorIQ=> "
	crt.Screen.Send "reset" & chr(13)
End Sub
