#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "scp hbma@173.16.15.250:/home/hbma/vnpp_lite/device/d2119351_845_lx2x_e500/lib/rcu_r845 ./" & chr(13)

	crt.Screen.WaitForString "hbma@173.16.15.250's password: "
	crt.Screen.Send "000000" & chr(13)

	crt.Screen.Send "ll" & chr(3)
End Sub
