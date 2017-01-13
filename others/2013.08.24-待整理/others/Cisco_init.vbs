#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'Step0: next
	'crt.Screen.Send chr(13)
	'crt.Screen.WaitForString "Would you like to enter the initial configuration dialog? [yes/no]:"
	'crt.Screen.Send "no" & chr(13) & chr(13) & chr(13)
		
	'Step00: get name
  Dim name
  name="Router"                                                                                
  name = crt.Dialog.Prompt("Please input the name:", _
                                  "Router", "R", False)
	
	'Step1: enable
	crt.Screen.Send "en" & chr(13)
	crt.Screen.WaitForString "#"
	
	'Step2: no debug all
	crt.Screen.Send "no debug all" & chr(13)
	crt.Screen.WaitForString "#"
	
	'Step3: hostname
	crt.Screen.Send "conf t" & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "hostname " & name & chr(13)
	crt.Screen.WaitForString "(config)#"
	crt.Screen.Send "end" & chr(13)
	crt.Screen.WaitForString "#"

	'Step4: write CFG file
	crt.Screen.Send "wri" & chr(13)
End Sub
