# $language = "VBScript"
# $interface = "1.0"
' SendCommandToAllTabs.vbs
'
' Description:
'   This example script shows how to send the same command to all tabs
'   that currently have an active connection.
' 
' Demonstrates:
'   - How to send a command to all tabs using the tab scripting capability
'     of SecureCRT
'   - How to prompt user for input using the crt.Dialog.Prompt() method.
'   - How to access the total number of Tabs in the SecureCRT window
'     by using the crt.GetTabCount property
'   - How to Activate a tab in the UI from within a script.
'   - How to use the Session.Connected property to determine if a tab
'     currently has an active connection or not.
'   - How to send data to a tab using the screen.Send method in SecureCRT.

Dim g_objTab, g_szSkippedTabs

' Get a reference to the tab that was active when this script was launched.
Set g_objTab = crt.GetScriptTab

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Main()
   
    ' Ask user what command should be sent to each tabs
    Dim szCommand_num
    szCommand_num=1
    'szCommand_num = crt.Dialog.Prompt("Clone all tabs:(Yes/1,NO/0)", _
    '                              "Clone All Tabs ", "1", False)
    'if szCommand_num = "" then exit sub
    
    if szCommand_num = "0" then
      Set obj_CurrentTab =  crt.GetActiveTab 
      obj_CurrentTab.Clone        
    else
      Dim nIndex
      Dim count_num 
      Dim num_unactive
      Dim name
      num_unactive=0
      For nIndex = 1 to crt.GetTabCount
          Set objCurrentTab = crt.GetTab(nIndex)
          objCurrentTab.Activate
          ' Skip tabs that aren't connected
          if objCurrentTab.Session.Connected = Flase then
               num_unactive=num_unactive + 1
          end if
       Next
      
      count_num = ( 2 * crt.GetTabCount) - num_unactive
      
      For nIndex = 1 to count_num
      		'debug for nIndex and crt.GetIabCount
      		'crt.Dialog.MessageBox(nIndex & "__" & crt.GetTabCount )
          Set objCurrentTab = crt.GetTab(nIndex)
          objCurrentTab.Activate
          ' Skip tabs that aren't connected
          if objCurrentTab.Session.Connected = True then
              'objCurrentTab.Screen.Send crt.GetTabCount & vbcr
              Set cloneTab = objCurrentTab.Clone
              
              'come on: change tittle of window
              'crt.GetActiveTab.Activate
              'name=crt.Window.Caption
              'crt.Window.Caption = name & "11"
              'cloneTab.Screen.Send "OK" & vbcr
              nIndex = nIndex + 1
              
          else
						  ' for tabs that aren't connected
          end if
       Next
     end if   

End Sub


































































