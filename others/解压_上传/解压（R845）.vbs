#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "cd /home/bmu852" & chr(13)
	crt.Screen.Send "rm -rf ./NpTar" & chr(13)
	crt.Screen.Send "mkdir NpTar" & chr(13)
	crt.Screen.Send "chmod 777 NpTar" & chr(13)
	crt.Screen.WaitForString "[root"
	crt.Screen.Send "chmod 777 /home/nmu/cabextract" & chr(13)
	crt.Screen.Send "/home/nmu/cabextract \(" & chr(9) & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "[root"
	
	crt.Screen.Send "mv ./R*/* ./NpTar/" & chr(13)
	crt.Screen.Send "mv boardproj.cmd ./NpTar/" & chr(13)
	crt.Screen.WaitForString "[root"
End Sub
