#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True
'crt.Screen.Synchronous = False

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	Dim pass
  pass="ZEBOS.CFG"  
  
  crt.Sleep 5000
  
  'Setp0: open sftp tab  
  'Set objCurrentTab = crt.GetTab(nIndex)
  Set objCurrentTab =  crt.GetActiveTab
  Set sftpTab = objCurrentTab.ConnectSftp
	
	'Setp1: change PC direction
	sftpTab.Screen.Send "lcd d:/R845/ftp/ZEBOS" & chr(13)
	'crt.Screen.Send vbCr
	sftpTab.Screen.WaitForString "sftp> "
	sftpTab.Screen.Send "lpwd" & chr(13)
	'sftpab.Screen.Synchronous is False, here WaitForString is colsed
	'sftpTab.Screen.WaitForString "sftp> "
	
	'Step2: change DUT direction
	sftpTab.Screen.Send "cd /home/scu" & chr(13)
	sftpTab.Screen.WaitForString "sftp> "
	sftpTab.Screen.Send "pwd" & chr(13)
	'sftpab.Screen.Synchronous is False, here WaitForString is colsed
	'sftpTab.Screen.WaitForString "sftp> "
	
	'Step3: transport files to PC
  'pass = crt.Dialog.Prompt("�������ļ���:", _
  '                                "�ļ�", "ZEBOS.CFG", False)
  'If pass = "" then exit sub
	
	'mk new dir
	Dim MyStr
	 'S1: 2013-3-6 10:42:22 -> 2013-3-6 10_42_22
  MyStr = Replace(Now, ":", "_")
	 'S2: 2013-3-6 10_42_22 -> 10_42_22	
	MyStr = Right(MyStr, 8)  
	sftpTab.Screen.Send "lmkdir " & MyStr & chr(13)
	
	'Setp1: change PC direction
	sftpTab.Screen.Send "lcd d:/R845/ftp/ZEBOS/" & MyStr & chr(13)
	'crt.Screen.Send vbCr
	sftpTab.Screen.WaitForString "sftp> "
	sftpTab.Screen.Send "lpwd" & chr(13)
	
	sftpTab.Screen.Send "get -b " & pass & chr(13)
	sftpTab.Screen.WaitForString "sftp> "
  
  'Step4: exit sftp
  sftpTab.Screen.Send "exit" & chr(13)
  crt.Sleep 100
  
  'Step5: colse sftp tab
  sftpTab.Close

End Sub
