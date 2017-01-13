# $language = "VBScript"
# $interface = "1.0"

Dim g_objTab, g_szSkippedTabs

' Get a reference to the tab that was active when this script was launched.
Set g_objTab = crt.GetScriptTab

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Main()
     
    ' Give the user a chance to review the command and cancel if they notice
    ' something wrong.
    If crt.Dialog.MessageBox(_
        "Are you sure you to get " & _
        "__ALL__ ZEBOS.CFG? " & vbcrlf & vbcrlf , _
        "Send time To All Tabs - Confirm", _
        vbyesno) <> vbyes then exit sub
    
    ' Activate each tab in order from left to right, and issue the command in
    ' each "connected" tab...
    Dim nIndex
    For nIndex = 1 to crt.GetTabCount
        Set objCurrentTab = crt.GetTab(nIndex)
        objCurrentTab.Activate
        ' Skip tabs that aren't connected
        if objCurrentTab.Session.Connected = True then
            
           crt.Sleep 1000
           
           Dim pass
           pass="ZEBOS.CFG"  
           
           'Setp0: open sftp tab  
           'Set objCurrentTab = crt.GetTab(nIndex)
           Set objCurrentTab =  crt.GetActiveTab
           Set sftpTab = objCurrentTab.ConnectSftp
	         
	         'Setp1: change PC direction
	         sftpTab.Screen.Send "lcd d:/" & chr(13)
	         'crt.Screen.Send vbCr
	         sftpTab.Screen.WaitForString "sftp> "
	         sftpTab.Screen.Send "lpwd" & chr(13)
	         
	         'Step2: change DUT direction
	         sftpTab.Screen.Send "cd /home/scu" & chr(13)
	         sftpTab.Screen.WaitForString "sftp> "
	         sftpTab.Screen.Send "pwd" & chr(13)
	         
	         'Step3: mk new dir on PC        
	         Dim MyStr
	          'S3.1: 2013-3-6 10:42:22 -> 2013-3-6 10_42_22
           MyStr = Replace(Now, ":", "_")
	          'S3.2: 2013-3-6 10_42_22 -> 10_42_22	
	         MyStr = Right(MyStr, 8)  
	         sftpTab.Screen.Send "lmkdir " & MyStr & chr(13)
	         
	         'Setp4: change PC direction
	         sftpTab.Screen.Send "lcd d:/R845/ftp/ZEBOS/" & MyStr & chr(13)
	         'crt.Screen.Send vbCr
	         sftpTab.Screen.WaitForString "sftp> "
	         sftpTab.Screen.Send "lpwd" & chr(13)
	         
	         sftpTab.Screen.Send "get -b " & pass & chr(13)
	         sftpTab.Screen.WaitForString "sftp> "
           
           'Step5: exit sftp
           sftpTab.Screen.Send "exit" & chr(13)
           crt.Sleep 100
           
           'Step5: colse sftp tab
           sftpTab.Close
            
        end if
    Next
    
    ' Now, activate the original tab on which the script was started
    g_objTab.Activate

End Sub

