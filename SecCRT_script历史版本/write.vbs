'write.vbs
Dim OperationRegistry
Set OperationRegistry=WScript.CreateObject("WScript.Shell")
'Default=OperationRegistry.RegRead("HKCR\")
''��ȡһ����ֵ (null)
'�� 
'OperationRegistry.RegWrite "HKCR\.xxf\",Default
''�ڸ���HKEY_CLASSES_ROOT֮���½�����.xxf,������Ĭ��ֵΪ��
'�� 
'OperationRegistry.RegWrite "HKCR\.xxf\","xxffile"
''�ڸ���HKEY_CLASSES_ROOT֮���½�����.xxf,������Ĭ��ֵ?quot;xxffile"
'�� 
'OperationRegistry.RegWrite "HKCR\.xxf\value1","string"
''������.xxf֮���½�һ���ַ����ͼ�ֵvalue1,�������ʼֵΪ"string"
'�� 
'OperationRegistry.RegWrite "HKCR\.xxf\value2",1,"REG_DWORD"
''������.xxf֮���½�һ��REG_DWORD�ͼ�ֵvalue2,�������ʼֵΪ1
'�� 
'OperationRegistry.RegWrite "HKCR\.xxf\value3",0Xff,"REG_BINARY"
''������.xxf֮���½�һ���������ͼ�ֵvalue3,�������ʼֵΪʮ�����Ƶ�ff

OperationRegistry.RegWrite "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\LicensingCore\EnableConcurrentSessions",1,"REG_DWORD"
'������.xxf֮���½�һ��REG_DWORD�ͼ�ֵvalue2,�������ʼֵΪ1

OperationRegistry.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AllowMultipleTSSessions",1,"REG_DWORD"
'������.xxf֮���½�һ��REG_DWORD�ͼ�ֵvalue2,�������ʼֵΪ1