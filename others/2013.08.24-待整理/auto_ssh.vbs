# $language = "VBScript"
# $interface = "1.0"

Sub Main
'连接主机192.168.0.2
'crt.session.Connect("/telnet 192.168.0.2")
'crt.session.Connect("/ssh2 152.66.1.11")
crt.Session.Connect "/SSH2 152.66.1.11 /PASSWORD password username@hostname", True

If Err.Number <> 0 Then

    MsgBox "Connection Failed"
Else
    MsgBox "Connection Successful"
End If

'等待出现登陆用户名提示login，等待时间是10s
crt.screen.WaitForString "name:",10
'输入用户名，回车
crt.screen.send "root" & Chr(13)
'等待出现登陆密码提示login，等待时间是10s
crt.screen.WaitForString "Password:",10
'输入密码，回车
crt.screen.send "root" &  Chr(13)
End Sub