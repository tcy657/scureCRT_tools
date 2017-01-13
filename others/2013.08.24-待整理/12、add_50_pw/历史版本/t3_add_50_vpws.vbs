# $language = "VBScript"
# $interface = "1.0"
' SendCommandToAllTabs.vbs

crt.Screen.Synchronous = True

'Step1: define function, with var or no var
'use: copy_file fold,I

'all var: 
'vc_id_ma, vc_id_bk, ip_b1, ip_b2, bfd_ma, bfd_bk, uni_intf
'ip_a1, ve_intf, l3ve_ip

'set var
'**********for debug
start=2

'**********A1
vc_id_ma=103
vc_id_bk=104

ip_b1="3.192.1.111"
ip_b2="3.192.1.112"

bfd_ma=vc_id_ma
bfd_bk=vc_id_bk

uni_intf="GE0/9/5"

'*********B1
vrf_name="CDMA-RAN"
ip_a1="3.192.1.101"
ve_intf="/0/2"

l3ve_ip="53.1.2.1/24"

' Get a reference to the tab that was active when this script was launched.
Set objCurrentTab = crt.GetTab(1)
      
'Function add_vpws_a1 (vc_id_ma, vc_id_bk, ip_b1, ip_b2, bfd_ma, bfd_bk, uni_intf)
Function add_vpws_a1 
	objCurrentTab.Screen.Send "telnet 127.1 2650" & chr(13)
	objCurrentTab.Screen.WaitForString "Password:"
	objCurrentTab.Screen.Send "a" & chr(13)
	objCurrentTab.Screen.WaitForString ">"
	objCurrentTab.Screen.Send "en" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'start to config
	objCurrentTab.Screen.Send "con t" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls l2-circuit vc_1_" & vc_id_ma & " " & vc_id_ma &  " " & ip_b1 & " control-word " & chr(13)
	objCurrentTab.Screen.Send "mpls l2-circuit vc_1_" & vc_id_bk & " " & vc_id_bk &  " " & ip_b2 & " control-word " & chr(13)
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls bfd l2-circuit " & vc_id_ma & " local-discriminator " & bfd_ma & " remote-discriminator " & bfd_ma & " min-tx 50 min-rx 50" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls bfd l2-circuit " & vc_id_bk & " local-discriminator " & bfd_bk & " remote-discriminator " & bfd_bk & " min-tx 50 min-rx 50" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls vpws vc_1_" & vc_id_ma & " " & vc_id_ma & Chr(13)
	objCurrentTab.Screen.Send " vpws-vc vc_1_" & vc_id_ma & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send " vpws-vc vc_1_" & vc_id_bk  & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send "exit" & chr(13)
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "interface " & uni_intf & "." & vc_id_ma & chr(13)
	objCurrentTab.Screen.Send " no shutdown" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " switchport" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-type 1" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-id 1 ploy 1" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-id 1 ovlan " & vc_id_ma & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " mpls-l2-circuit vc_1_" & vc_id_ma & " ethernet" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " mpls-l2-circuit vc_1_" & vc_id_bk & " ethernet secondary" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " vc-mode revertive" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "end" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'return to linux
	objCurrentTab.Screen.Send "exit" & chr(13)
End Function

Function del_vpws_a1 
	objCurrentTab.Screen.Send "telnet 127.1 2650" & chr(13)
	objCurrentTab.Screen.WaitForString "Password:"
	objCurrentTab.Screen.Send "a" & chr(13)
	objCurrentTab.Screen.WaitForString ">"
	objCurrentTab.Screen.Send "en" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'start to config
	objCurrentTab.Screen.Send "con t" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls l2-circuit vc_1_" & vc_id_ma & " " & vc_id_ma &  " " & ip_b1 & " control-word " & chr(13)
	objCurrentTab.Screen.Send "mpls l2-circuit vc_1_" & vc_id_bk & " " & vc_id_bk &  " " & ip_b2 & " control-word " & chr(13)
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls bfd l2-circuit " & vc_id_ma & " local-discriminator " & bfd_ma & " remote-discriminator " & bfd_ma & " min-tx 50 min-rx 50" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls bfd l2-circuit " & vc_id_bk & " local-discriminator " & bfd_bk & " remote-discriminator " & bfd_bk & " min-tx 50 min-rx 50" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls vpws vc_1_" & vc_id_ma & " " & vc_id_ma & Chr(13)
	objCurrentTab.Screen.Send " vpws-vc vc_1_" & vc_id_ma & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send " vpws-vc vc_1_" & vc_id_bk  & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send "exit" & chr(13)
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "interface " & uni_intf & "." & vc_id_ma & chr(13)
	objCurrentTab.Screen.Send " no shutdown" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " switchport" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-type 1" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-id 1 ploy 1" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-id 1 ovlan " & vc_id_ma & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " mpls-l2-circuit vc_1_" & vc_id_ma & " ethernet" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " mpls-l2-circuit vc_1_" & vc_id_bk & " ethernet secondary" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " vc-mode revertive" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "end" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'return to linux
	objCurrentTab.Screen.Send "exit" & chr(13)
End Function

'Function add_vpws_b1(vc_id_ma, ip_a1, bfd_ma, ve_intf, l3ve_ip)
Function add_vpws_b1
	objCurrentTab.Screen.Send "telnet 127.1 2650" & chr(13)
	objCurrentTab.Screen.WaitForString "Password:"
	objCurrentTab.Screen.Send "a" & chr(13)
	objCurrentTab.Screen.WaitForString ">"
	objCurrentTab.Screen.Send "en" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'start to config	
	objCurrentTab.Screen.Send "con t" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "!!!!!!!!!B1" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	'mpls l2-circuit vc_1_103 103 3.192.1.101 control-word'
	objCurrentTab.Screen.Send "mpls l2-circuit vc_1_" & vc_id_ma & " " & vc_id_ma &  " " & ip_a1 & " control-word " & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send " vlan-rx-tx-op rx-tag 1 tx-tag 1 tx-vlan-id " & vc_id_ma & " tx-vlan-pri 0 tag-type 0 l2-circuit  vc_1_" & vc_id_ma & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "mpls vpws vc_1_" & vc_id_ma & " " & vc_id_ma & Chr(13)
	objCurrentTab.Screen.Send " vpws-vc vc_1_" & vc_id_ma & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-vpws)#"
	objCurrentTab.Screen.Send "exit " & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "interface L2VE0" & ve_intf & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " no shutdown" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " switchport" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni rx-tag recongnize" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni tx-tag 2" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " uni stream-id 1 ploy 1" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " mpls-l2-circuit vc_1_" & vc_id_ma & " ethernet" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "exit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "interface L3VE0" & ve_intf & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " no shutdown" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " mac-address 8888.8888.8888" & chr(13)
	objCurrentTab.Screen.Send " ip vrf forwarding " & vrf_name & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send " ip address " & l3ve_ip & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	'objCurrentTab.Screen.Send " phb-select policy 1" & chr(13)
	'objCurrentTab.Screen.WaitForString " phb-select policy 1(config-if)#"
	objCurrentTab.Screen.Send " commit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "!" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "exit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "end" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'return to linux
	objCurrentTab.Screen.Send "exit" & chr(13)
End Function

Function del_vpws_b1
	objCurrentTab.Screen.Send "telnet 127.1 2650" & chr(13)
	objCurrentTab.Screen.WaitForString "Password:"
	objCurrentTab.Screen.Send "a" & chr(13)
	objCurrentTab.Screen.WaitForString ">"
	objCurrentTab.Screen.Send "en" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'start to config	
	objCurrentTab.Screen.Send "con t" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "interface L3VE0" & ve_intf & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "no ip vrf forwarding " & vrf_name & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "shutdown" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "exit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "no interface L3VE0" & ve_intf & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "inter L2VE0" & ve_intf & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "no mpls-l2-circuit vc_1_" & vc_id_ma & " ethernet" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "shutdown" & chr(13)
	objCurrentTab.Screen.WaitForString "(config-if)#"
	objCurrentTab.Screen.Send "exit" & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "no inter L2VE0" & ve_intf & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "no mpls vpws vc_1_" & vc_id_ma & Chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "no mpls l2-circuit vc_1_" & vc_id_ma & " " & vc_id_ma &  " " & ip_a1 & " control-word " & chr(13)
	objCurrentTab.Screen.WaitForString "(config)#"
	objCurrentTab.Screen.Send "end" & chr(13)
	objCurrentTab.Screen.WaitForString "#"
	
	'return to linux
	objCurrentTab.Screen.Send "exit" & chr(13)
End Function

Dim g_objTab, g_szSkippedTabs

' Get a reference to the tab that was active when this script was launched.
Set g_objTab = crt.GetScriptTab

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Main()
   
    ' Ask user what command should be sent to each tabs
    'Dim szCommand
    'szCommand = objCurrentTab.Dialog.Prompt("Enter command to be sent to all tabs:", _
    '                              "Send To All Connected Tabs", "ls -alR", False)
    'if szCommand = "" then exit sub
    
    ' Activate each tab in order from left to right, and issue the command in
    ' each "connected" tab...
    
    Dim nIndex
    For nIndex = start to crt.GetTabCount
        Set objCurrentTab = crt.GetTab(nIndex)
        objCurrentTab.Activate
        ' Skip tabs that aren't connected
        if objCurrentTab.Session.Connected = True then
        		objCurrentTab.Screen.Clear
            '********* do sth ************* 
            'Step7: do sth
	          Select Case nIndex
              Case 1
                 'add_vpws_a1 vc_id_ma, vc_id_bk, ip_b1, ip_b2, bfd_ma, bfd_bk, uni_intf
                 objCurrentTab.Screen.Send "#for test1 -- " & nIndex & chr(13)
                 add_vpws_a1
              Case 2
                 'add_vpws_b1 vc_id_ma, ip_a1, bfd_ma, ve_intf, l3ve_ip
                 objCurrentTab.Screen.Send "#for test2 -- " & nIndex & chr(13)
                 'add_vpws_b1
                 del_vpws_b1         
              Case Else
              	 '正常情况下不会运行到这里
                 msgbox "程序异常，现在退出! " ,, "系统提示" 
            End Select
            'If nIndex = 1 Then
            '	add_vpws_a1 vc_id_ma, vc_id_bk, ip_b1, ip_b2, bfd_ma, bfd_bk, uni_intf   
                                           
            '********* do end *************                                
            'objCurrentTab.Screen.Send szCommand & vbcr
        else
            if g_szSkippedTabs = "" then
                g_szSkippedTabs = nIndex
            else
                g_szSkippedTabs = g_szSkippedTabs & "," & nIndex
            end if
        end if
    Next
    
    ' Now, activate the original tab on which the script was started
    g_objTab.Activate

    ' Determine if there were any skipped tabs, and prepare a message for
    ' displaying at the end.
   ' if g_szSkippedTabs <> "" then
   '     g_szSkippedTabs = vbcrlf & vbcrlf & _
   '         "The following tabs did not receive the command because" & vbcrlf & _
   '         "they were not connected at the time:" & _
   '         vbcrlf & vbtab & g_szSkippedTabs
   ' end if

 '   objCurrentTab.Dialog.MessageBox _
 '       "The following command was sent to all connected tabs:" & vbcrlf & _
 '       vbtab & szCommand & g_szSkippedTabs

End Sub

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 