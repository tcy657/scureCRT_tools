#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  Dim pass
  pass=30                                                                                   
  Do Until pass > 1 And pass < 30
   'pass = crt.Dialog.Prompt("Panel NO(2~29):", "Enter Panel NO", "", True)
  pass = Inputbox("请输入登录的单盘号(2~29):", "盘号")
  Loop
 
	Select Case pass
   Case "2"
      crt.Screen.Send "telnet 10.26.0.2" & chr(13)
   Case "3"
      crt.Screen.Send "telnet 10.26.0.3" & chr(13)
   Case "4"
      crt.Screen.Send "telnet 10.26.0.4" & chr(13)
   Case "5"
      crt.Screen.Send "telnet 10.26.0.5" & chr(13)  
   Case "6"
      crt.Screen.Send "telnet 10.26.0.6" & chr(13)  
   Case "7"
      crt.Screen.Send "telnet 10.26.0.7" & chr(13)  
   Case "8"
      crt.Screen.Send "telnet 10.26.0.8" & chr(13) 
   Case "9"
      crt.Screen.Send "telnet 10.26.0.9" & chr(13)  
   Case "10"
      crt.Screen.Send "telnet 10.26.0.10" & chr(13)  
   Case "11"
      crt.Screen.Send "telnet 10.26.0.11" & chr(13)  
   Case "12"
      crt.Screen.Send "telnet 10.26.0.12" & chr(13) 
   Case "13"
      crt.Screen.Send "telnet 10.26.0.13" & chr(13)  
   Case "14"
      crt.Screen.Send "telnet 10.26.0.14" & chr(13)  
   Case "15"
      crt.Screen.Send "telnet 10.26.0.15" & chr(13)  
   Case "16"
      crt.Screen.Send "telnet 10.26.0.16" & chr(13) 
   Case "17"
      crt.Screen.Send "telnet 10.26.0.17" & chr(13)  
   Case "18"
      crt.Screen.Send "telnet 10.26.0.18" & chr(13)  
   Case "19"
      crt.Screen.Send "telnet 10.26.0.19" & chr(13)  
   Case "20"
      crt.Screen.Send "telnet 10.26.0.20" & chr(13) 
   Case "21"
      crt.Screen.Send "telnet 10.26.0.21" & chr(13)  
   Case "22"
      crt.Screen.Send "telnet 10.26.0.22" & chr(13)  
   Case "23"
      crt.Screen.Send "telnet 10.26.0.23" & chr(13)  
   Case "24"
      crt.Screen.Send "telnet 10.26.0.24" & chr(13) 
   Case "25"
      crt.Screen.Send "telnet 10.26.0.25" & chr(13)  
   Case "26"
      crt.Screen.Send "telnet 10.26.0.26" & chr(13)  
   Case "27"
      crt.Screen.Send "telnet 10.26.0.27" & chr(13)  
   Case "28"
      crt.Screen.Send "telnet 10.26.0.28" & chr(13) 
   Case "29"
      crt.Screen.Send "telnet 10.26.0.29" & chr(13)  
   Case Else
      msgbox " Your NO is not between 2~29! " ,, "系统提示"
 End Select

 crt.Screen.WaitForString "VxWorks login: "
 crt.Screen.Send "bmu852" & chr(13)
 crt.Screen.WaitForString "Password: "
 crt.Screen.Send "aaaabbbb" & chr(13)
 crt.Screen.WaitForString "->"
 crt.Screen.Send chr(13)
 crt.Screen.WaitForString "->"
 crt.Screen.Send chr(13)
 'crt.Screen.Send "printctrl " & chr(13)
 'crt.Screen.WaitForString "->"

End Sub
