Set Fsys=CreateObject("Scripting.FileSystemObject")    '��������
set fso=Fsys.opentextfile("2.txt",1)     '2.txt���Ի�����ָ�����ı�
do while fso.atendofstream<>true       '�����ֻҪ�����ļ��Ľ�β,
txt = fso.readline                               '�Ͱ��ж�ȡ����,
msgbox txt                                       '����msgbox��������ʾ����һ�е�����
loop                                                  'ѭ��
set fso = nothing                                '�Ѵ����Ķ��������