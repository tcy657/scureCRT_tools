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
    szCommand_num = crt.Dialog.Prompt("Sent commands to all tabs:(Yes/1,NO/0)", _
                                  "Send To All Tabs ", "0", False)
    if szCommand_num = "" then exit sub
    
     if szCommand_num = "0" then
       crt.Screen.Send "!*************** start ***************" & Now & "!" & vbcr
       crt.Screen.Clear
       crt.Screen.Send "show rsvp session" & vbcr             
       crt.Screen.Send "show mpls ilm-table" & vbcr
       crt.Screen.Send "show mpls forwarding-table" & vbcr
       crt.Screen.Send "show ip bgp sum" & vbcr
       crt.Screen.Send "show mpls vrf-table" & vbcr 
       'crt.Screen.Send "!***************end***************!" & vbcr 
       
     else
       Dim nIndex
       For nIndex = 1 to crt.GetTabCount
           Set objCurrentTab = crt.GetTab(nIndex)
           objCurrentTab.Activate
           ' Skip tabs that aren't connected
           if objCurrentTab.Session.Connected = True then
               'objCurrentTab.Screen.Send szCommand & vbcr
               objCurrentTab.Screen.Send "!***************start***************" & Now & "!" & vbcr
               objCurrentTab.Screen.Clear
               objCurrentTab.Screen.Send "show rsvp session" & vbcr
               objCurrentTab.Screen.Send "show mpls ilm-table" & vbcr
               objCurrentTab.Screen.Send "show mpls forwarding-table" & vbcr
               objCurrentTab.Screen.Send "show ip bgp sum" & vbcr
               objCurrentTab.Screen.Send "show mpls vrf-table" & vbcr 
               'objCurrentTab.Screen.Send "!*************** end ***************!" & vbcr 
           else
               if g_szSkippedTabs = "" then
                   g_szSkippedTabs = nIndex
               else
                   g_szSkippedTabs = g_szSkippedTabs & "," & nIndex
               end if
           end if
       Next
      end if   

End Sub

