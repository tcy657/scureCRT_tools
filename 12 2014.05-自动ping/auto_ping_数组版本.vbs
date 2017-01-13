#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main

	Dim params
  ReDim params()
	params(0)=""
	params(0)=""
	
	'start to ping
	for i=1 to ubound(Contents)
	crt.Screen.Send "ping Contents(i) c 1 vrf " & chr(13)
  crt.Screen.WaitForString "#"
	crt.Sleep 300
	next


End Sub
