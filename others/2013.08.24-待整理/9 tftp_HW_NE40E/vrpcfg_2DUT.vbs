#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  '###S1: return to <HWA>
	crt.Screen.Send "return" & chr(13)
	crt.Screen.WaitForString "<HWA>"
	
	'###S2: get vrpcfg.cfg from PC
	crt.Screen.Send "tftp 102.0.0.202 get vrpcfg.cfg" & chr(13)
	crt.Screen.WaitForString "<HWA>"
	crt.Screen.Send  chr(13)
	
End Sub
