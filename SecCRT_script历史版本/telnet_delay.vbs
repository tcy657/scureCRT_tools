#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  Dim pass
  pass=0                                                                                   
Do Until pass > 20
	crt.Screen.Send "display bgp peer" & chr(13)
	crt.Screen.WaitForString "[PE1]"
	crt.Sleep 1000
	crt.Screen.Send "display ip rout vpn-instance VPN4809" & chr(13)	
	crt.Screen.WaitForString "[PE1]"
	crt.Sleep 1000
  'msgbox " Your NO is not between 2~29! " ,, "ϵͳ��ʾ"
	pass=pass+1
Loop

MsgBox " �����ظ����������ByeBye! " ,, "ϵͳ��ʾ"

End Sub
