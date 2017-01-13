#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	'Setp1: change PC direction
	crt.Screen.Send "lcd d:/R845/ftp" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "lpwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	'Step2: change DUT direction
	crt.Screen.Send "cd /home/scu" & chr(13)
	crt.Screen.WaitForString "sftp> "
	crt.Screen.Send "pwd" & chr(13)
	crt.Screen.WaitForString "sftp> "
	
	  Dim pass
  pass=30                                                                                   
  Do Until pass >= 0 And pass < 17
   pass = crt.Dialog.Prompt("ZEBOS.CFG NO(0~15,16):", "Enter NO", "", True)
  Loop
 
	Select Case pass
   '16: put ZEBOS.CFG.
   Case "16"
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk" & chr(13)
      	crt.Screen.Send "put -b ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "0"
      	crt.Screen.Send "put -b ZEBOS.CFG_0" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk0" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_0 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "1"
      	crt.Screen.Send "put -b ZEBOS.CFG_1" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk1" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_1 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "2"
      	crt.Screen.Send "put -b ZEBOS.CFG_2" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bak2" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_bk2 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "3"
      	crt.Screen.Send "put -b ZEBOS.CFG_3" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk3" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_3 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "4"
      	crt.Screen.Send "put -b ZEBOS.CFG_4" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk4" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_4 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "5"
      	crt.Screen.Send "put -b ZEBOS.CFG_5" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk5" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_5 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "6"
      	crt.Screen.Send "put -b ZEBOS.CFG_6" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk6" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_6 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "7"
      	crt.Screen.Send "put -b ZEBOS.CFG_7" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk7" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_7 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "8"
      	crt.Screen.Send "put -b ZEBOS.CFG_8" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk8" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_8 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "9"
      	crt.Screen.Send "put -b ZEBOS.CFG_9" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk9" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_9 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "10"
      	crt.Screen.Send "put -b ZEBOS.CFG_10" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk10" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_10 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "11"
      	crt.Screen.Send "put -b ZEBOS.CFG_11" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk11" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_11 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "12"
      	crt.Screen.Send "put -b ZEBOS.CFG_12" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk12" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_12 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "13"
      	crt.Screen.Send "put -b ZEBOS.CFG_13" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk13" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_13 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "14"
      	crt.Screen.Send "put -b ZEBOS.CFG_14" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk14" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_14 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case "15"
      	crt.Screen.Send "put -b ZEBOS.CFG_15" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG ZEBOS.CFG_bk15" & chr(13)
        crt.Screen.Send "mv ZEBOS.CFG_15 ZEBOS.CFG" & chr(13)
	      crt.Screen.WaitForString "sftp> "
   Case Else
      msgbox " Your NO is not between 0~15! " ,, "系统提示"
 End Select

'exit secureCRT script
crt.Screen.Send "exit" & chr(13)
End Sub
