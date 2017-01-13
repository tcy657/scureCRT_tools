#$language = "VBScript"
#$interface = "1.0"
' ----------------------------------------------------------------------------
' Script Name: update_R845_pannel.vbs
' Creation Date: 2013.4.1
' Last Modified: 2013.4.2
' Copyright (c)2013.4.1 cytao, fiberhome Inc.
' Purpose: 
'添加新单盘四步骤：
'1）定义数组，A(9)实际可存10个数据；
'2）在单盘选择提示中增加新单盘选项
'3）在if选择中增加新判断项
'4）在case选择操作中增加新单盘选项
' ----------------------------------------------------------------------------

crt.Screen.Synchronous = True

'Step1: define function
Function copy_file(fold, file_name)
  'copy "./scup1/file_name", "/tffs/file_name"
	crt.Screen.Send "copy " & chr(34) & "./" & fold & "/" & file_name & chr(34) & "," & chr(34) & "/tffs/" & file_name & chr(34) & chr(13)
	crt.Screen.WaitForString "->"
	'crt.Screen.WaitForString "value = "  
End Function

Function update_file(fold, file_list)
	num=1
	 
	For Each I in file_list
    crt.Screen.Send num & chr(13)
	  crt.Screen.WaitForString "->"
    num=num+1
    
    copy_file fold,I
  Next
  
  'crt.Screen.Send "11111 end 11111" & chr(13)
	'crt.Screen.WaitForString "->"
End Function

Function cabextract_cab
	'Step 0.1: make new NPTar
	crt.Screen.Send "cd /home/bmu852" & chr(13)
	crt.Screen.Send "rm -rf ./NpTar" & chr(13)
	crt.Screen.Send "mkdir NpTar" & chr(13)
	'crt.Screen.Send "chmod 755 NpTar" & chr(13)
	crt.Screen.WaitForString "[root"
	
	'Step 0.2: cabextract cab file
	crt.Screen.Send "chmod 755 /home/nmu/cabextract" & chr(13)
	'？
	crt.Screen.Send "/home/nmu/cabextract \(" & chr(9) & chr(13)
	'If (crt.screen.WaitForString("(: No such file or directory", 2) <>False) Then
  '    MsgBox "Start to cabextract!"
  '    cabextract_cab
  'End If
  
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "[root"
	
	'Step 0.3: move all files in NPtar
	crt.Screen.Send "mv ./R*/* ./NpTar/" & chr(13)
	crt.Screen.Send "mv boardproj.cmd ./NpTar/" & chr(13)
	crt.Screen.WaitForString "[root"
End Function

Sub Main

  'Step2: define and init var
  Dim pannel_num,hostname
  Dim pannel_flag,pannel_name
  Dim fold
  Dim bin
  
  pannel_flag=0
  pannel_num="SCUP1" 
  fold="scup1"
  
  Dim scup1(10)
  scup1(0)="param.xml"
  scup1(1)="SCUP1.zb"
  scup1(2)="HX330_R845.xex"
  scup1(3)="HX330B2_R845.xex"
  scup1(4)="XelSdk.zb"
  scup1(5)="XelApp.zb"
  scup1(6)="SCUP1.zj"
  scup1(7)="boardproj.cmd"
  scup1(8)="vxWorks_8247a_256M.z"
  scup1(9)="R845_1588.zb"
  scup1(10)="bmulib_8247a.zb"
  'scup1(11)="bootrom_8247a_256M.bin"

  Dim e1k4(7)
  e1k4(0)="vxWorks_b.bin"
  e1k4(1)="e1k4.zj"
  e1k4(2)="E1K4.zb"
  e1k4(3)="boardproj.cmd"
  e1k4(4)="bmulib22_hard.zb"
  e1k4(5)="arrive.zj"
  e1k4(6)="arrive.zb"
  e1k4(7)="E1K4_hard.zb"

  Dim esk4(4)
  esk4(0)="vxWorks_b.bin"
  esk4(1)="esk4.zj"
  esk4(2)="esk4.zb"
  esk4(3)="boardproj.cmd"
  esk4(4)="bmulib22.zb"

  Dim msk1(4)
  msk1(0)="vxWorks_b.bin"
  msk1(1)="top_msk1.zj"
  msk1(2)="MSK1.zb"
  msk1(3)="boardproj.cmd"
  msk1(4)="bmulib22.zb"

  Dim msk2(4)
  msk2(0)="vxWorks_b.bin"
  msk2(1)="top_msk2.zj"
  msk2(2)="ProjectMSK2.zb"
  msk2(3)="boardproj.cmd"
  msk2(4)="bmulib22.zb"

  Dim msp1(4)     
  msp1(0)="vxWorks_b.bin"   
  msp1(1)="top_msp1.zj"     
  msp1(2)="ProjectMSP1.zb"  
  msp1(3)="boardproj.cmd"   
  msp1(4)="bmulib22.zb"     

  Dim xsk2(5)     
  xsk2(0)="QT2225.bin"   
  xsk2(1)="XSK2.zb"     
  xsk2(2)="bmulib22.zb"  
  xsk2(3)="boardproj.cmd"   
  xsk2(4)="xsk2.zj" 
  xsk2(5)="vxWorks_b.bin"
  
	'Step3: cabextract cab file, ls /home/bmu852 | grep -E "(\.cab$)"
	'crt.Screen.Send "ll /home/bmu852/" & chr(13)
  crt.Screen.Send "ll /home/bmu852/\(" & chr(9) & chr(13)   
  If (crt.screen.WaitForString(".cab", 2) <>False) Then
      MsgBox "Start to cabextract!"
      cabextract_cab
  End If
	
	'Step4: Get the selection  
	Do Until pannel_flag=1  
     pannel_name = crt.Dialog.Prompt("请输入盘类型（SCUP1/E1K4/ESK4/MSK1/MSK2/MSP1/XSK2/Any/):", _
                                  "盘类型", "SCUP1", False)
     
     if   pannel_name = "SCUP1"   Or _
             pannel_name ="E1K4"  Or _
             pannel_name ="ESK4"  Or _
             pannel_name ="MSK1"  Or _
             pannel_name ="MSK2"  Or _
             pannel_name ="MSP1"  Or _
             pannel_name ="XSK2"  Or _
             pannel_name ="Any"   Or _             
             pannel_name =""     then                 
          pannel_flag=1
     else
          pannel_flag=0
     End if   
	Loop
	
	'exit 1/2
	If pannel_name ="" then exit sub 
	
	
	'Step5: 利用 LCase 函数把大写字母转换为小写字母，所有小写字母和非字母字符保持不变。
	bin = LCase(pannel_name)   
	
	if   pannel_name <> "Any"   then         
      crt.Screen.Send "mv /home/bmu852/NpTar  /home/bmu852/" & bin & chr(13)
      crt.Screen.WaitForString "[root"   	
	End if
	 
	'Step6: telnet panel
	crt.Screen.Send vbCR
  If (crt.Screen.WaitForString ("->",2) <>False) Then
  	crt.Screen.Send "exit" &vbCR
  End If

  pannel_num = crt.Dialog.Prompt("请输入升级的单盘号:", _
                                  "盘号", "6", False)
  'exit 2/2
  If pannel_num = "" then exit sub
  
  'kill telnet proccess
  'crt.Screen.Send "ps -ef | grep 'telnet 10.26.0."&pannel_num &"'|grep -v grep" &"|awk '{print $2}'|xargs -n 1 kill -9" & vbCR 
  crt.Screen.Send "kill -9 `ps -ef | grep 'telnet 10.26.0." & pannel_num &"' |grep -v grep |awk '{print $2}'|xargs -n 1`" & vbCR 
  crt.Screen.WaitForString "]"
	crt.Sleep 4000
  
  crt.Screen.Send "telnet 10.26.0." & pannel_num & chr(13)
  If crt.screen.WaitForString("VxWorks login: ", 5) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If
  
  crt.Screen.Send "bmu852" & chr(13)
  If crt.screen.WaitForString("Password: ", 5) <> True Then
      MsgBox "Failed to login!"
      Exit Sub
  End If
  crt.Screen.Send "aaaabbbb" & chr(13)
  crt.Screen.WaitForString "->"
  crt.Screen.Send chr(13)
  crt.Screen.WaitForString "->"
  
	crt.Screen.Send "dir" &vbCR
	crt.Screen.WaitforString "->"	
	'crt.Screen.Send "xdelete "/tffs/"" & vbCR
	'crt.Screen.WaitforString "->"
 
	'Step7: do sth
	 Select Case pannel_name
     Case "SCUP1"
        fold="scup1"
        update_file fold,scup1
     Case "E1K4"
        fold="e1k4"
        update_file fold,e1k4 
     Case "ESK4"
        fold="esk4"
        update_file fold,esk4 
     Case "MSK1"
        fold="msk1"
        update_file fold,msk1 
     Case "MSK2"
        fold="msk2"
        update_file fold,msk2 
     Case "MSP1"
        fold="msp1"
        update_file fold,msp1 
     Case "XSK2"
        fold="xsk2"
        update_file fold,xsk2 
     Case "Any"
        'copy files to panel
	      for i=2 to ubound(Contents)-1
	        copy_file "NpTar", Contents(i)
	      next                   
     Case "C"
        crt.Screen.Send "exit" & chr(13)            
     Case Else
     	  '因为盘类型参数已经有if判断，正常情况下不会运行到这里
        msgbox "程序异常，现在退出! " ,, "系统提示" 
   End Select

 crt.Screen.Synchronous = False
End Sub