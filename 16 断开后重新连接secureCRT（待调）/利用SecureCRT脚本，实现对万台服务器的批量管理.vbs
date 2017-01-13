# $language = "VBScript"
# $interface = "1.0"

' Written by Peng Xiaofeng
' @ 201107
' QQ:5876006
'http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece763104687270e54f732668c8c463888c80284642c1d1020fefd7d62475785d27c1100a8435eeff53065377523a09bbe8b5dddccc86e70d633712d5cd04e538448e88b1132c050c11aafb81897ad863784d8d4c4af5044b927127bf0e7fa591767bb7880622695a78e48641b40fb&p=882a9645d7991afb2aacc7710f5580&newp=8f7ac64ad4dd11a05bed956f59498b231610db2151d4d41561&user=baidu&fm=sc&query=securecrt%D7%D4%B6%AF%C1%AC%BD%D3++vbs&qid=b57cbc92000128d2&p1=8

Const ForReading = 1
Const ForWriting = 2

Dim fso, outputpath , iplistpath , file, iplist, Str, StrIp, StrPwd
Dim loginuser
Dim index , index1 , n ,productpath

'======================path and some parameters ==========================================
  outputpath = ".\install-log.txt"   '输出文件
  iplistpath = ".\ip.txt"    'ip列表文件,每行有2列，用1个空格作为分隔符，首尾不能有多余的空格
  loginuser = "root"   '登陆用户
  productpath = "/usr/local/src"    '产品路径
'=======================define end=================================================

'=======================open file==================================================
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(outputpath , ForWriting, True) ' result file path
Set iplist = fso.OpenTextFile(iplistpath , ForReading, False) ' ip-list file path
'========================end open==================================================

'==============================================ssh start===================================================
Sub Ssh(ip)

                crt.Screen.Synchronous = True
                On Error Resume Next
               
                cmd = "/ssh2 /L " & loginuser &" /PASSWORD " & StrPwd & " /C 3DES " & ip
                crt.Session.Connect cmd
               
                If Err.Number <> 0 Then
                        file.Write " Can't connect 22 port:" & vbCr
                        index = 99
                        crt.Session.Disconnect
                Else
                          Do
                                  index = crt.Screen.WaitForStrings("#" , ">" , 10)
                                  Select Case index
                                                  Case "0"
                                                                file.Write "login fail:" & loginuser
                                                                index = 99
                                                            Exit Do
                                                  Case "1"
                                                                index = 100
                                                                Exit Do
                                                  Case "2"
                                                                index = 100
                                                                Exit Do
                                  End Select
                          Loop
                          If index <> 100 Then
                           crt.Session.Disconnect
                          End If
                End If
End Sub
'==============================================ssh end========================================================

'==============================================install begin==================================================
Sub Install

crt.Sleep 1000
crt.Screen.Send "cd " & productpath & vbCr
    crt.Screen.Send "LANG=en_US.UTF-8;export LANG" & vbCr
                crt.Sleep 1000                                                                            
                crt.Screen.Send "LC_ALL=en_US.UTF-8;export LC_ALL" & vbCr
                crt.Sleep 1000                                                                                                                                                                                                                                                                                                                                                                                                             
crt.Screen.Synchronous = False                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
crt.Screen.Send "uname -rsm" & vbCr     '判断系统版本                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
Do            
        index1 = crt.Screen.WaitForStrings("Linux 2.6.18-194.el5 x86_64", "Linux 2.6.9-55.ELsmp i686", "Linux 2.6.18-194.el5 i686", "Linux 2.6.18-164.ESX x86_64", 5)                                                                                                                                                                                                                                                                                                                                                                                                                                
        Select Case index1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                        Case "0"                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                            Exit Do                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                        Case "1"
                        'CENTOS5.5 64bit
                                                                crt.Screen.Send "wget ftp://ftp.sunet.se/pub/Linux/distributions/centos/5.6/os/x86_64/CentOS/lrzsz-0.12.20-22.1.x86_64.rpm" & vbCr
                                                                crt.Sleep 12000
                                                                crt.Screen.Send "ls" & vbCr
                                                                crt.sleep 1000
                                                                Exit Do
                        Case "2"
                                'RHEL4U4 32bit
                                                                crt.Screen.Send "ls" & vbCr
                                                                crt.sleep 1000
                                                                Exit Do                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                        Case "3"
                         'CENTOS5.5 32bit
                                                                crt.Screen.Send "ls" & vbCr
                                                                crt.sleep 1000
                                                                Exit Do      
                        Case "4"
                                'ESX 4.1 64bit
                                                                crt.Screen.Send "ls" & vbCr
                                                                crt.sleep 1000
                                                                Exit Do
                End Select                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
Loop

If index1 = 0 Then                                                                                                                            
file.Write " time out! : Cann't confirm os version! "                                                                                                                                  
Else                                                                                                                                                    
crt.Screen.Send "rpm -qa|grep  rzsz" & vbCr   '判断lrzsz是否安装                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
If crt.Screen.WaitForString("lrzsz", 5) = True Then
        file.Write " lrzsz Exists "
Else
        crt.Screen.Send "ls" & vbCr     
              crt.sleep 1000                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                crt.Screen.Send "rpm -ivh lrzsz-0.12.20-22.1.x86_64.rpm"        & vbCr  '执行安装命令
                           crt.sleep 3000          
                           crt.Screen.Send "ls /usr/bin/rz" & vbCr
                           If crt.Screen.WaitForString("/usr/bin/rz", 5) = True Then  '判断是否安装成功
                           file.Write "lrzsz install success"   '结果写进输出文件中
                           crt.Screen.Send "rm -f lrzsz-0.12.20-22.1.x86_64.rpm"        & vbCr   '删除安装程序
                           crt.sleep 1000
                           Else
                                 file.Write "lrzsz install fail"
                           crt.sleep 1000
                           End If                                                                                   
End If                                                                                                                                        
End If                                                                                                                                                                                                                                                                                                                                                                                                                         
crt.Screen.Send "exit" & vbCr
End Sub
'==============================================install end=================================================

'==============================================Main begin==================================================
Sub Main

  Do While iplist.AtEndOfStream <> True
'逐行读取iplist文件，分别赋予2个变量StrIp和StrPwd
                Str = iplist.Readline
                n = InStr(Str, " ")
                StrIp = Left(Str, n)
                n = Len(Str) - n
                StrPwd = Right(Str, n)
'下面的把结果写到输出文件中                 
                file.Write "Ip:" & StrIp & "-"
                Ssh StrIp
               
                If index = 99 Then                                                             
                crt.Sleep 1000
                Else
                crt.Screen.Send "id " & vbCr
                        If crt.Screen.WaitForString("uid=0", 3) = True Then
                                crt.Sleep 1000
                                Install   '执行install过程
                        End If
                End If
                crt.Session.Disconnect                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                file.Write vbCrLf
  Loop
End Sub