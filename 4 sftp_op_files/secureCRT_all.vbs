# $language = "VBScript"
# $interface = "1.0"

Dim g_objTab, g_szSkippedTabs

' Get a reference to the tab that was active when this script was launched.
Set g_objTab = crt.GetScriptTab

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Main()
     
    ' Activate each tab in order from left to right, and issue the command in
    ' each "connected" tab...
    Dim nIndex
    For nIndex = 1 to crt.GetTabCount
        Set objCurrentTab = crt.GetTab(nIndex)
        objCurrentTab.Activate
        ' Skip tabs that aren't connected
        if objCurrentTab.Session.Connected = True then            
           crt.Sleep 100           

           Dim pass
           pass="pwd"                      
            
           Set objCurrentTab =  crt.GetActiveTab
	         
	         '************* add your code **********************
	          objCurrentTab.Screen.Send pass & chr(13)
	          objCurrentTab.Screen.WaitForString "["	 
	         '************* add end ****************************
	                 
        end if
    Next
  '  
  '  ' Now, activate the original tab on which the script was started
  '  g_objTab.Activate

End Sub

