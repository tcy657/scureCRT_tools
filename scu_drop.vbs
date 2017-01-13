#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'crt.Screen.Send "ver " & chr(13)
	'crt.Screen.WaitForString "->"
	
	'####S1 printportmap
	crt.Screen.Send "printportmap " & chr(13)
  If crt.screen.WaitForString("->", 2) <> True Then     
      MsgBox "Failed to show!"                                 
      Exit Sub                                                  
  End If      
	
	'####S2 scu_drop
	crt.Screen.Send "DbgGetPortDropCounter " & chr(13)
  If crt.screen.WaitForString("->", 3) <> True Then     
      MsgBox "Failed to show!"                                 
      Exit Sub                                                  
  End If                                                        

	crt.Screen.Send "DbgGetPortDropCounter " & chr(13)
  If crt.screen.WaitForString("->", 3) <> True Then     
      MsgBox "Failed to show!"                                 
      Exit Sub                                                  
  End If      

	'crt.Screen.Send "DbgGetPortDropCounter " & chr(13)
End Sub
