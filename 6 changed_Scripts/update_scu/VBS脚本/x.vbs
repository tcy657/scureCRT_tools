 dim x
  x = InputBox("��������")
	MsgBox (" mid: " & mid(x,1,1))
	MsgBox (" int:" & int( "&h"   &   mid(x,1,1)))
	MsgBox (" cint:" & cint(int( "&h"   &   mid(x,1,1))))