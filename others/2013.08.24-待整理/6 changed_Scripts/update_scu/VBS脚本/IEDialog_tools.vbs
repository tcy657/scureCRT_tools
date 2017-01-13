    ' First step, set up the dialog (InternetExplorer)
    Set g_objIE = CreateObject("InternetExplorer.Application")
    g_objIE.Offline = True
    g_objIE.navigate "about:blank"

    ' Wait for the navigation to the "blank" web page to complete
    Do
        wscript.sleep 100
    Loop While g_objIE.Busy

    g_objIE.Document.body.Style.FontFamily = "Sans-Serif"

    ' Here's where we "create" the elements of our dialog box.  We basically
    ' throw HTML into the document, and IE loads it in real-time for us.
    '
    ' The hidden "ButtonHandler" input is used to tie IE and
    ' SecureCRT together such that SecureCRT can know when a
    ' button is pressed, etc.
    g_objIE.Document.Body.innerHTML = _
    		"<!--*******Part1: AUTO*************-->"  & _
    		"<input name='check_all' type='checkbox' onclick=""document.all('ButtonHandler').value='check_all';"" AccessKey='a' tabindex=1><b><u>A</u>ll</b><br>" & _
    		"<!--*******11 files*************-->"  & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        	"<input name='send_cmd1' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd1';"" AccessKey='1'>File <u>1</u>:  SCUP1.zb<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd2' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd2';"" AccessKey='2'>File <u>2</u>:  param.xml<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd3' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd3';"" AccessKey='3'>File <u>3</u>:  HX330_R845.xex<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd4' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd4';"" AccessKey='4'>File <u>4</u>:  HX330B2_R845.xex<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd5' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd5';"" AccessKey='5'>File <u>5</u>:  XelSdk.zb<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd6' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd6';"" AccessKey='6'>File <u>6</u>:  XelApp.zb<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd7' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd7';"" AccessKey='7'>File <u>7</u>:  SCUP1.zj<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd8' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd8';"" AccessKey='8'>File <u>8</u>:  boardproj.cmd<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd9' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd9';"" AccessKey='9'>File <u>9</u>:  vxWorks_8247a_256M.z<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd10' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd10';"" AccessKey='0'>File 1<u>0</u>:  R845_1588.zb<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<input name='send_cmd11' type='checkbox' onclick=""document.all('ButtonHandler').value='send_cmd11';"" AccessKey='1'>File 1<u>1</u>:  bmulib_8247a.zb<br>" & _
        "<!--*******Part2: Manual*************-->"  & _
        "<input name='check_add' type='checkbox' onclick=""document.all('ButtonHandler').value='check_add';"" AccessKey='d'><b>A<u>d</u>dtion</b><br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
            "new <u>f</u>ilename:&nbsp;<input name='manu_filename' size='40' maxlength='100' AccessKey='n'><br>" & _
        "<!--*******Part3: Direction*************-->"  & _
        "<input name='check_dir' type='checkbox' onclick=""document.all('ButtonHandler').value='check_dir';"" AccessKey='L'><b><u>L</u>ocation</b><br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
            "<input type=radio name='dir_locat' value='/home/bmu852' AccessKey='m' checked>/home/bmu852" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;" & _
            "<input type=radio name='dir_locat' value='/home/bmu852/scu' Accesskey='s' >/home/bmu852/scu" & _
        "<!--*******Part4: Log to file*************-->"  & _
        "<p></p>" & _
        "<input name='check_log' type='checkbox' onclick=""document.all('ButtonHandler').value='check_log';"" AccessKey='L'><u>L</u>og Output to File<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
            "<b>Log <u>f</u>ilename:</b><input name='log_filename' size='71' maxlength='512' AccessKey='f'><br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;" & _
            "<input type=radio name='log_mode' value='Append' AccessKey='A' ><u>A</u>ppend<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;" & _
            "<input type=radio name='log_mode' value='Overwrite' Accesskey='w' checked>Over<u>w</u>rite<br>" & _
        "<!--*******Part4.2: test*************-->"  & _
        "file1:&nbsp;<input name='file_1' size='40' maxlength='100' AccessKey='n'><br>" & _
        "file2:&nbsp;<input name='file_2' size='40' maxlength='100' AccessKey='n'><br>" & _
        "file3:&nbsp;<input name='file_3' size='40' maxlength='100' AccessKey='n'><br>" & _
        "file4:&nbsp;<input name='file_4' size='40' maxlength='100' AccessKey='n'><br>" & _
        "<!--*******Part5: OK or Cancel*************-->"  & _
        "<textarea>123</textarea>" & _
        "<hr>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<button name='OK' AccessKey='O' onclick=document.all('ButtonHandler').value='OK';><u>O</u>K</button>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & _
        "<button name='Cancel' AccessKey='C' onclick=document.all('ButtonHandler').value='Cancel';><u>C</u>ancel</button>" & _
        "<input name='ButtonHandler' type='hidden' value='Nothing Clicked Yet'>"

    '设置浏览器的属性
    g_objIE.MenuBar = False
    g_objIE.StatusBar = True
    g_objIE.AddressBar = False
    g_objIE.Toolbar = False
    'g_objIE.height = 420
    'g_objIE.height = 600
    'g_objIE.width = 640
    g_objIE.document.Title = "Custom Dialog Prompt"
    g_objIE.Visible = True

    ' Wait for the "dialog" to be displayed before we attempt to set any
    ' of the dialog's default values.
    Do
        wscript.sleep 100
    Loop While g_objIE.Busy

    Set objShell = CreateObject("WScript.Shell")
    objShell.AppActivate g_objIE.document.Title

    '设置初始值
    g_objIE.Document.All("check_all").Checked =  True
    	g_objIE.Document.All("send_cmd1").Checked = True
    	g_objIE.Document.All("send_cmd2").Checked = True
    	g_objIE.Document.All("send_cmd3").Checked = True
    	g_objIE.Document.All("send_cmd4").Checked = True
    	g_objIE.Document.All("send_cmd5").Checked = True
    	g_objIE.Document.All("send_cmd6").Checked = True
    	g_objIE.Document.All("send_cmd7").Checked = True
    	g_objIE.Document.All("send_cmd8").Checked = True
    	g_objIE.Document.All("send_cmd9").Checked = True
    	g_objIE.Document.All("send_cmd10").Checked = True
    	g_objIE.Document.All("send_cmd11").Checked = True
    g_objIE.Document.All("check_add").Checked = True
      g_objIE.Document.All("manu_filename").Value = "zz1"
    g_objIE.Document.All("check_dir").Checked = True
    g_objIe.Document.All("check_log").Checked = True
    	g_objIE.Document.All("log_filename").Value = "zz2"
    	
    'test

    g_objIE.Document.All("file_1").Value = &H1234
    g_objIE.Document.All("file_2").Value = "&H1234"
    g_objIE.Document.All("file_3").Value = "&H1234"
    g_objIE.Document.All("file_4").Value = "result"


		' S1: check_add is off
		if g_objIE.Document.All("check_add").Checked then
        ' Enable the other elements of the dialog dealing with
        ' logging
        g_objIE.Document.All("manu_filename").Disabled = False
    else
        ' Disable the other elements of the dialog dealing with
        ' logging
        g_objIE.Document.All("manu_filename").Disabled = True
    end if

    ' S2: check_dir is off
    Select Case dir_locat
        Case "/home/bmu852/scu"
            g_objIE.Document.All("dir_locat")(1).Select
            g_objIE.Document.All("dir_locat")(1).Checked = false
            g_objIE.Document.All("dir_locat")(1).Click
        Case "/home/bmu852"
        Case Else
            g_objIE.Document.All("dir_locat")(0).Select
            g_objIE.Document.All("dir_locat")(0).Checked = true
            g_objIE.Document.All("dir_locat")(0).Click
    End Select

    if g_objIE.Document.All("check_dir").Checked then
        ' Enable the other elements of the dialog dealing with
        ' logging
        g_objIE.Document.All("dir_locat")(1).Disabled = False
        g_objIE.Document.All("dir_locat")(0).Disabled = False
    else
        ' Disable the other elements of the dialog dealing with
        ' logging
        g_objIE.Document.All("dir_locat")(1).Disabled = True
        g_objIE.Document.All("dir_locat")(0).Disabled = True
    end if

    ' S3: log file
    if g_objIE.Document.All("check_log").Checked then
        ' Enable the other elements of the dialog dealing with
        ' logging
        g_objIE.Document.All("log_filename").Disabled = False
        g_objIE.Document.All("log_mode")(0).Disabled = False
        g_objIE.Document.All("log_mode")(1).Disabled = False
    else
        ' Disable the other elements of the dialog dealing with
        ' logging
        g_objIE.Document.All("log_filename").Disabled = True
        g_objIE.Document.All("log_mode")(0).Disabled = True
        g_objIE.Document.All("log_mode")(1).Disabled = True
    end if

    Do
        ' If the user closes the IE window by Alt+F4 or clicking on the 'X'
        ' button, we'll detect that here, and exit the script if necessary.
        On Error Resume Next
            Err.Clear
            szNothing = g_objIE.Document.All("ButtonHandler").Value
'##           if Err.Number <> 0 then exit Sub

        ' Check to see which buttons have been clicked, and address each one
        ' as it's clicked.
        Select Case g_objIE.Document.All("ButtonHandler").Value
            Case "Cancel"
                ' Close the custom dialog box...
                g_objIE.Quit

                ' Exit the function with value of False
'##                exit function

            Case "OK"
                ' Capture data from each field in the dialog...
                check1_all = g_objIE.Document.All("check_all").Checked
                	send1 = g_objIE.Document.All("send_cmd1").Checked
                	send2 = g_objIE.Document.All("send_cmd2").Checked
                	send3 = g_objIE.Document.All("send_cmd3").Checked
                	send4 = g_objIE.Document.All("send_cmd4").Checked
                	send5 = g_objIE.Document.All("send_cmd5").Checked
                	send6 = g_objIE.Document.All("send_cmd6").Checked
                	send7 = g_objIE.Document.All("send_cmd7").Checked
                	send8 = g_objIE.Document.All("send_cmd8").Checked
                	send9 = g_objIE.Document.All("send_cmd9").Checked
                	send10 = g_objIE.Document.All("send_cmd10").Checked
                	send11 = g_objIE.Document.All("send_cmd11").Checked
                check2_add = g_objIE.Document.All("check_add").Checked
                	send_add = g_objIE.Document.All("manu_filename").Value
                check3_dir = g_objIE.Document.All("check_dir").Checked
                check4_log = g_objIe.Document.All("check_log").Checked
                	send_logfile = g_objIE.Document.All("log_filename").Value

                for nIndex = 0 to g_objIE.Document.All("dir_locat").Length - 1
                    if g_objIE.Document.All("dir_locat")(nIndex).Checked then
                        send_dir = g_objIE.Document.All("dir_locat")(nIndex).Value
                        exit for
                    end if
                Next

                for nIndex = 0 to g_objIE.Document.All("log_mode").Length - 1
                    if g_objIE.Document.All("log_mode")(nIndex).Checked then
                        szAppendOrOverwrite = g_objIE.Document.All("log_mode")(nIndex).Value
                        exit for
                    end if
                Next

                ' Set function's return value to indicate "OK"
                PromptForInput = True

                ' Close the custom dialog box...
               ' g_objIE.Quit

                ' Exit the function
'##                exit function
                dim a
                a = g_objIE.Document.All("file_2").Value
                g_objIE.Document.All("file_1").Value = c2to10(a)
                g_objIE.Document.All("file_3").Value = c10to2(a)
                g_objIE.Document.All("file_4").Value = c16to2(a)

            Case "check_all"
                ' Reset the button handler value.  We don't do this in the
                ' case of "Cancel" and "OK" handling since the dialog is
                ' going away...
                g_objIE.Document.All("ButtonHandler").value = ""

                ' Handle the check in real-time...
                if g_objIE.Document.All("check_all").Checked then
                    ' Enable the other elements of the dialog dealing with
                    ' logging
                  	g_objIE.Document.All("send_cmd1").Checked = True
                  	g_objIE.Document.All("send_cmd2").Checked = True
                  	g_objIE.Document.All("send_cmd3").Checked = True
                  	g_objIE.Document.All("send_cmd4").Checked = True
                  	g_objIE.Document.All("send_cmd5").Checked = True
                  	g_objIE.Document.All("send_cmd6").Checked = True
                  	g_objIE.Document.All("send_cmd7").Checked = True
                  	g_objIE.Document.All("send_cmd8").Checked = True
                  	g_objIE.Document.All("send_cmd9").Checked = True
                  	g_objIE.Document.All("send_cmd10").Checked = True
                  	g_objIE.Document.All("send_cmd11").Checked = True
                else
                    ' Disable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("send_cmd1").Checked = False
                  	g_objIE.Document.All("send_cmd2").Checked = False
                  	g_objIE.Document.All("send_cmd3").Checked = False
                  	g_objIE.Document.All("send_cmd4").Checked = False
                  	g_objIE.Document.All("send_cmd5").Checked = False
                  	g_objIE.Document.All("send_cmd6").Checked = False
                  	g_objIE.Document.All("send_cmd7").Checked = False
                  	g_objIE.Document.All("send_cmd8").Checked = False
                  	g_objIE.Document.All("send_cmd9").Checked = False
                  	g_objIE.Document.All("send_cmd10").Checked = False
                  	g_objIE.Document.All("send_cmd11").Checked = False
                end if

            Case "check_add"
                ' Reset the button handler value.  We don't do this in the
                ' case of "Cancel" and "OK" handling since the dialog is
                ' going away...
                g_objIE.Document.All("ButtonHandler").value = ""

                ' Handle the check in real-time...
                if g_objIE.Document.All("check_add").Checked then
                    ' Enable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("manu_filename").Disabled = False
                else
                    ' Disable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("manu_filename").Disabled = True
                end if

             Case "check_dir"
                ' Reset the button handler value.  We don't do this in the
                ' case of "Cancel" and "OK" handling since the dialog is
                ' going away...
                g_objIE.Document.All("ButtonHandler").value = ""

                ' Handle the check in real-time...
                if g_objIE.Document.All("check_dir").Checked then
                    ' Enable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("dir_locat")(1).Disabled = False
                    g_objIE.Document.All("dir_locat")(0).Disabled = False
                else
                    ' Disable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("dir_locat")(1).Disabled = True
                    g_objIE.Document.All("dir_locat")(0).Disabled = True
                end if

             Case "check_log"
                ' Reset the button handler value.  We don't do this in the
                ' case of "Cancel" and "OK" handling since the dialog is
                ' going away...
                g_objIE.Document.All("ButtonHandler").value = ""

                ' Handle the check in real-time...
                if g_objIE.Document.All("check_log").Checked then
                    ' Enable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("log_filename").Disabled = False
                    g_objIE.Document.All("log_mode")(0).Disabled = False
                    g_objIE.Document.All("log_mode")(1).Disabled = False
                else
                    ' Disable the other elements of the dialog dealing with
                    ' logging
                    g_objIE.Document.All("log_filename").Disabled = True
                    g_objIE.Document.All("log_mode")(0).Disabled = True
                    g_objIE.Document.All("log_mode")(1).Disabled = True
                end if
        End Select

        On Error Goto 0
        ' Wait for user interaction with the dialog... Instead of crt.Sleep,
        ' we use g_objTab.Screen.WaitForString and pass in a string that
        ' is never expected to be found.  The worst case scenario here is
        ' that 1 second will pass between the time that the user clicks on
        ' the OK button and the dialog goes away, for example.
        ' We do this to avoid 100% CPU usage.
'        g_objTab.Screen.WaitForString "1324;l1@#$!@#$!@#$ This will never appear", 1
    Loop
    
'------------------------------------------------------------------------------------------
'######## F1 c2to10(x)
function   c2to10(x) 
'单纯的2进制到10进制的转换，不考虑转16进制所需要的4位前零补齐。 
'因为这个函数很有用！以后也会用到，做过通讯和硬件的人应该知道。 
'这里用字符串代表二进制 
c2to10=0 
if   x= "0"   then   exit   function '如果是0的话直接得0就完事 
dim   i:i=0 '临时的指针 
for   i=   0   to   len(x)   -1 '否则利用8421码计算--这个从我最开始学计算机的时候就会，好怀念当初教我们的谢道建老先生啊！ 
	if   mid(x,len(x)-i,1)= "1"   then   c2to10=c2to10+2^(i) 
next 
end   function     

'######## F2 c2to16(x)
function   c2to16(x) 
'2进制到16进制的转换，每4个0或1转换成一个16进制字母，输入长度当然不可能不是4的倍数了 

dim   i:i=1 '临时的指针 
for   i=1   to   len(x)     step   4 
c2to16=c2to16   &   hex(c2to10(mid(x,i,4))) 
next 
end   function

'######## F3 c10to2(x)
function   c10to2(x) '10进制到2进制的转换
'这个函数在计算16位到2位转换时候用到了，
'没有做在16位里面是因为这个函数只是单纯10-2转换，不涉及16进制由4个2进制补齐空位，将来可以用到任何地方
'比如输入2，输出“10”而不是“0010”
'首先判断正负符号
dim   mysign:mysign=sgn(x) '定义一个符号标记
x=abs(x)

'然后判断有几位,至少一位，x = 1 or 0, 退出循环
dim   WeiS:WeiS=1

do
	if   x <2^WeiS   then
		exit   do
	else
		WeiS=WeiS+1
	end   if
loop

dim   tempnum:tempnum=x '定义一个临时的数字
dim   i:i=0 '临时的指针
for   i=WeiS   to   1     step   -1
	if   tempnum >= 2^(i-1)   then
		tempnum=tempnum-2^(i-1)
		c10to2=c10to2   &   "1"
	else
		c10to2=c10to2   &   "0"
	end   if
next
if   mysign=-1   then   c10to2= "- "   &   c10to2 '加上正负符号
end   function

'######## F4 c16to2(x)
function   c16to2(x)
'这个函数是用来转换16进制到2进制的，可以是任何长度的，一般转换UTF-8的时候是两个长度，比如A9
'比如：输入“C2”，转化成“11000010”,其中1100是 "c "是10进制的12（1100），那么2（10）不足4位要补齐成（0010）。
dim   tempstr
dim   i:i=0 '临时的指针

'返回不带前导与后续空格 (Trim) 的字符串副本
for   i=1   to   len(trim(x))
	tempstr=   c10to2(cint(int( "&h"   &   mid(x,i,1))))
	'tempstr=   c10to2(mid(x,i,1))

	do   while   len(tempstr) <4
		tempstr= "0"   &   tempstr '如果不足4位那么补齐4位数
	loop

	c16to2=c16to2   &   tempstr
next
end   function

'######## F5 ISNumber ?
function   number_s(x)
If IsNumeric(x) Then
    If x < 1 Or x > 10 Then
      MsgBox "请输入一个 1 到 10 之间的数字。"
    Else
      MsgBox "谢谢。"
    End If
  Else
    MsgBox "请输入数值。"
  End If                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     