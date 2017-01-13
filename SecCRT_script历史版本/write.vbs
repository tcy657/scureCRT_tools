'write.vbs
Dim OperationRegistry
Set OperationRegistry=WScript.CreateObject("WScript.Shell")
'Default=OperationRegistry.RegRead("HKCR\")
''获取一个空值 (null)
'　 
'OperationRegistry.RegWrite "HKCR\.xxf\",Default
''在根键HKEY_CLASSES_ROOT之下新建主键.xxf,并置其默认值为空
'　 
'OperationRegistry.RegWrite "HKCR\.xxf\","xxffile"
''在根键HKEY_CLASSES_ROOT之下新建主键.xxf,并置其默认值?quot;xxffile"
'　 
'OperationRegistry.RegWrite "HKCR\.xxf\value1","string"
''在主键.xxf之下新建一个字符串型键值value1,并置其初始值为"string"
'　 
'OperationRegistry.RegWrite "HKCR\.xxf\value2",1,"REG_DWORD"
''在主键.xxf之下新建一个REG_DWORD型键值value2,并置其初始值为1
'　 
'OperationRegistry.RegWrite "HKCR\.xxf\value3",0Xff,"REG_BINARY"
''在主键.xxf之下新建一个二进制型键值value3,并置其初始值为十六进制的ff

OperationRegistry.RegWrite "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\LicensingCore\EnableConcurrentSessions",1,"REG_DWORD"
'在主键.xxf之下新建一个REG_DWORD型键值value2,并置其初始值为1

OperationRegistry.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AllowMultipleTSSessions",1,"REG_DWORD"
'在主键.xxf之下新建一个REG_DWORD型键值value2,并置其初始值为1