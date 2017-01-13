# $language = "VBScript"
# $interface = "1.0"

Sub Main
'连接主机192.168.0.2
crt.session.Connect("/telnet 4.76.1.133")
'crt.session.Connect("/ssh2 152.66.1.11")
'等待出现登陆用户名提示login，等待时间是10s
crt.screen.WaitForString ">",10
'输入用户名，回车
crt.screen.send "en" & Chr(13)
'等待出现登陆密码提示login，等待时间是10s
crt.screen.WaitForString "#",10
'输入密码，回车
crt.screen.send "show ver" &  Chr(13)
End Sub