#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main

Set Fsys=CreateObject("Scripting.FileSystemObject")    '创建对象
set fso=Fsys.opentextfile("2.txt",1)     '2.txt可以换成你指定的文本
do while fso.atendofstream<>true       '这个是只要不是文件的结尾,
 txt = fso.readline                               '就按行读取内容,
 'msgbox txt                                       '并用msgbox弹出框显示出这一行的内容
 	crt.Screen.Send  txt & chr(13)
  crt.Screen.WaitForString "#"
 	crt.Sleep 300
loop                                                  '循环
set fso = nothing                                '把创建的对象结束掉


End Sub
