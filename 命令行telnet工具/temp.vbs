on error resume next 
Const ForReading = 1
Const ForWriting = 2

Dim fso, outputpath , iplistpath , file, iplist, Str, StrIp, StrFile
Dim loginuser
Dim index , index1 , n ,productpath

'======================path and some parameters ==========================================
  outputpath = ".\software_Tx.bat"   '输出文件
  iplistpath = ".\device.ini"    '列表文件,每行有2列，用1个空格作为分隔符，首尾不能有多余的空格
  loginuser = "root"   '登陆用户
'=======================define end=================================================

'=======================open file==================================================
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(outputpath , ForWriting, True) ' result file path
Set iplist = fso.OpenTextFile(iplistpath , ForReading, False) ' ip-list file path
'========================end open==================================================

'
Set username = fiberhome 
Set password = fiberhome

  Do While iplist.AtEndOfStream <> True
'逐行读取iplist文件，分别赋予2个变量StrIp和StrFile
                Str = iplist.Readline
                n = InStr(Str, " ")
                StrIp = Left(Str, n)
                '去除空格
                StrIp=replace(StrIp," ","")
                n = Len(Str) - n
                StrFile = Right(Str, n)
 file.Write "echo y|pscp.exe -v -p -l root -pw root " &  StrFile & " root@" & StrIp &":/dev/shm/"
 file.Write vbCrLf
 
 'file.Write "echo y|pscp.exe -v -p -l root -pw  """root""" " &  StrFile & " root@" & StrIp &\":/dev/shm/"   & vbCr
 Loop

dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.run"cmd"
WshShell.AppActivate"c:\windows\system32\cmd.exe"
WScript.Sleep 200
'ftpping 192.168.0.2
WshShell.SendKeys"software_Tx.bat{enter}"
'telnet
'WshShell.SendKeys"telnet 175.16.10.1"
'WshShell.SendKeys"{enter}"
'WScript.Sleep 100
'WshShell.AppActivate"telnet.exe "
'WScript.Sleep 2000
'WshShell.SendKeys"fiberhome"
'WshShell.SendKeys"{enter}"
'WScript.Sleep 1000
'WshShell.SendKeys"fiberhome"
'WshShell.SendKeys"{enter}"
'WScript.Sleep 2000
'WshShell.SendKeys"ping 175.16.10.1"
'WshShell.SendKeys"{enter}"
'WScript.Sleep 1000
'WshShell.SendKeys"ping 192.168.0.2"
'WshShell.SendKeys"{ENTER}"
'WScript.Sleep 1000
