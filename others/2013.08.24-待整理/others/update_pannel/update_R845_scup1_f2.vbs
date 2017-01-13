#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

'Step1: define function
Function copy_file(file_name)
  'copy "./scup1/file_name", "/tffs/file_name"
	crt.Screen.Send "copy " & chr(34) & "./scup1/" & file_name & chr(34) & "," & chr(34) & "/tffs/" & file_name & chr(34) & chr(13)
	crt.Screen.WaitForString "->"  
End Function

Sub Main
  'Step2: define and init var
  Dim nmu,scu(10)	
  
	num=1  
  scu(0)="param.xml"
  scu(1)="SCUP1.zb"
  scu(2)="HX330_R845.xex"
  scu(3)="HX330B2_R845.xex"
  scu(4)="XelSdk.zb"
  scu(5)="XelApp.zb"
  scu(6)="SCUP1.zj"
  scu(7)="boardproj.cmd"
  scu(8)="vxWorks_8247a_256M.z"
  scu(9)="R845_1588.zb"
  scu(10)="bmulib_8247a.zb"
  'scu(11)="bootrom_8247a_256M.bin"

	'Step3: do sth
	crt.Screen.Send "dir" & chr(13)
	crt.Screen.WaitForString "->"  

  For Each I in scu
    crt.Screen.Send num & chr(13)
	  crt.Screen.WaitForString "->"
    num=nmu+1
    
    copy_file(I)
  Next
End Sub