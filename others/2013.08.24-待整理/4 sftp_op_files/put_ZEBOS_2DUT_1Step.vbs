#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'Setp0: open sftp tab  
  Set objCurrentTab =  crt.GetActiveTab
  Set sftpTab = objCurrentTab.ConnectSftp
	
	'Setp1: change PC direction
	sftpTab.Screen.Send "lcd d:/R845/ftp/ZEBOS" & chr(13)
	sftpTab.Screen.WaitForString "sftp> "
	sftpTab.Screen.Send "lpwd" & chr(13)
	'sftpTab.Screen.WaitForString "sftp> "
	
	'Step2: change DUT direction
	sftpTab.Screen.Send "cd /home/scu" & chr(13)
	sftpTab.Screen.WaitForString "sftp> "
	sftpTab.Screen.Send "pwd" & chr(13)
	'sftpTab.Screen.WaitForString "sftp> "
	
	Dim pass
  pass="ZEBOS.CFG"                                                                                   

 	'Step3: transport files to DUT
  pass = crt.Dialog.Prompt("请输入文件名:", _
                                  "文件", "ZEBOS.CFG", False)
  If pass = "" then 
   'Step4: exit sftp
   sftpTab.Screen.Send "exit" & chr(13)
   crt.Sleep 100
   
   'Step5: colse sftp tab
   sftpTab.Close
   exit sub
  end if
	
	sftpTab.Screen.Send "put -b " & pass & chr(13)
	sftpTab.Screen.WaitForString "sftp> "
  
  'Step4: exit sftp
  sftpTab.Screen.Send "exit" & chr(13)
  crt.Sleep 100
  
  'Step5: colse sftp tab
  sftpTab.Close

End Sub
