# $language = "VBScript"
# $interface = "1.0"

' get from internet(Peng Xiaofeng), 201107
' edited by cytao,2015/8/26 16:07:01

Const ForReading = 1
Const ForWriting = 2

Dim fso, outputpath , iplistpath , file, iplist, Str, StrIp, StrPwd
Dim loginuser
Dim index , index1 , n ,productpath

'======================path and some parameters ==========================================
  outputpath = ".\install-log.txt"   '����ļ�
  StrIp = "10.190.5.252" '�豸IP
  loginuser = "root"   '��½�û�
  StrPwd = "root"  '�豸����
'=======================define end=================================================

'=======================open file==================================================
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(outputpath , ForWriting, True) ' result file path
'========================end open==================================================

'==============================================ssh start===================================================
Sub Ssh(ip)

                crt.Screen.Synchronous = True
                On Error Resume Next
                
                '��������������ڵ�¼�õ��豸�������У��򱨴�
                crt.Session.Disconnect
                
                cmd = "/ssh2 /L " & loginuser &" /PASSWORD " & StrPwd & " /C 3DES " & ip
                crt.Session.Connect cmd
                
                If Err.Number <> 0 Then
                        file.Write Now & " Can't connect 22 port:" & vbCr
                        index = 99
                        crt.Session.Disconnect
                Else
                          Do
                                  index = crt.Screen.WaitForStrings("#" , ">" , 10)
                                  Select Case index
                                                  Case "0" '��¼Timed out!"
                                                                file.Write Now &"login fail:" & loginuser
                                                                index = 99
                                                            Exit Do
                                                  Case "1" 'ϵͳ��ʾ��Ϊ#
                                                                index = 100
                                                                Exit Do
                                                  Case "2" 'ϵͳ��ʾ��Ϊ>
                                                                index = 100
                                                                Exit Do
                                  End Select
                          Loop
                          'If index <> 100 Then   '��¼Timed out!"
                          ' crt.Session.Disconnect
                          'End If
                End If
End Sub
'==============================================ssh end========================================================

'==============================================Main begin==================================================
Sub Main
                
  Do 
                
'����İѽ��д������ļ���                 
                file.Write "Ip:" & StrIp & "-"
                
                '��¼�豸
                Ssh StrIp
                crt.Screen.Send  "#4s"& vbCrLf
                
                If index = 99 Then    '��¼��ʱ                                                         
                   crt.Sleep 1000                
                Else
                  '���ӵ�¼��2650��
                  'show interface����
                  '''''''''''''''''''''''''''''''''
                  crt.Screen.Send  "#5s"& vbCrLf
                  crt.Sleep 5000
                End If
                
                'crt.Session.Disconnect                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                file.Write Now & vbCrLf
  Loop
End Sub