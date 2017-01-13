# $language = "VBScript"
# $interface = "1.0"
' UseIEAsCustomDialog.vbs
'
' Description:
'   This sample script shows how the Internet Explorer automation object
'   can be used to create custom dialog that can be used within a SecureCRT
'   script.


Dim g_objIE, g_objTab
set g_objTab = crt.GetScriptTab

Dim g_fso, g_shell
Set g_fso = CreateObject("Scripting.FileSystemObject")
Set g_shell = CreateObject("WScript.Shell")

g_objTab.Screen.Synchronous = True

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sub Main()

    if Not g_objTab.Session.Connected then
        MsgBox "This script was designed to be launched from a tab " & _
               "that is already connected to a remote machine."
        exit sub
    end if

    Dim  check1_all
    	Dim	send1,  send2,   send3
    	Dim	send4,  send5,   send6
    	Dim	send7,  send8,   send9
    	Dim	send10,  send11
    Dim check2_add, send_add
    Dim check3_dir, send_dir
    Dim check4_log, send_logfile, szAppendOrOverwrite
    Dim szSavedLogFileName

    Dim send_dir_zz

    ' Set up default values for the dialog. These values are passed to the
    ' PromptForInput() function as "ByRef" references, so their values will
    ' be modified therein and will remain changed (or not, depending on the
    ' user's interaction with the dialog) once the dialog is dismissed.
     check1_all = True
     check1_all = False
     	send1 = False
     	send2 = False
     	send3 = False
     	send4 = False
     	send5 = False
     	send6 = False
     	send7 = False
     	send8 = False
     	send9 = False
     	send10 = False
     	send11 = False
     check2_add = False
     	send_add = "HX330B2_R845.xex"
     check3_dir = False
     	send_dir = "/home/bmu852/scu"
     	send_dir_zz = "./scu/"

     'check4_log = True
     check4_log = False
     	send_logfile = "D:\R845_scu.log"
     szAppendOrOverwrite = "Overwrite"

    ' Save the current session's log file name so that we can twiddle it
    ' in the dialog, write to the new value, and then restore the original
    ' log file name
    szSavedLogFileName = g_objTab.Session.LogFileName
    Dim szTempLogFileName

    ' This loop gives us an opportunity to do some error checking with
    ' the return values provided once the dilaog's "OK" button is clicked,
    ' display an Error message, and then display the dialog again with the
    ' same values the user submitted intact.  In this example, we're doing
    ' two checks on the log file, 1) Check that a log file name was supplied
    ' if logging option was enabled and 2) Check that the parent folder of
    ' the specified log file exists.
    Do
        if Not PromptForInput( check1_all, _
													 send1,   send2,    send3,_
                        	 send4,   send5,    send6,_
                        	 send7,   send8,    send9,_
                        	 send10,   send11,_
                         check2_add,  send_add, _
                         check3_dir,  send_dir, _
                         check4_log,  send_logfile,  szAppendOrOverwrite) then
            MsgBox "User canceled."
            exit sub
        end if

       '如果选择了输出记录到文件
        if check4_log then
            if send_logfile = "" then
                MsgBox "Log filename required if Log option is enabled."
            else
                if Not g_fso.FolderExists(g_fso.GetParentFolderName(send_logfile)) then
                    MsgBox "Log folder path does not exist: " & vbcrlf & _
                        vbcrlf & _
                        vbtab & _
                        g_fso.GetParentFolderName(send_logfile) & vbcrlf & _
                        vbcrlf & _
                        "Please specify a log file name in an existing folder."
                else
                    szTempLogFileName = send_logfile
                    exit do
                end if
            end if
        else
            exit do
        end if
    Loop


    ' Now that we have validated data, let's do the work...

    ' 0) Determine if we should log or not...
    if check3_dir then
        Select Case send_dir
            Case "/home/bmu852/scu"
                send_dir_zz = "./scu/"
            Case "/home/bmu852"
                send_dir_zz = "./"
            Case Else
                ' We don't ever expect this unless there is some mistake
                ' in the radio button HTML code in the PromptForInput()
                ' function below.
                MsgBox "Unknown direction value: " & send_dir_zz
                exit sub
        End Select
    end if


    ' 1) Determine if we should log or not...
    if check4_log then
        ' 1.1) Determine which log mode to use...
        Dim bAppend
        Select Case szAppendOrOverwrite
            Case "Append"
                bAppend = True
            Case "Overwrite"
                bAppend = False
            Case Else
                ' We don't ever expect this unless there is some mistake
                ' in the radio button HTML code in the PromptForInput()
                ' function below.
                MsgBox "Unknown LogMode value: " & szAppendOrOverwrite
                exit sub
        End Select

        ' 1.2) Turn off logging on the old file if it's enabled
        if g_objTab.Session.Logging then g_objTab.Session.Log False

        ' 1.3) Set up the current session to log to the temporary log file
        '      specified in the user dialog
        g_objTab.Session.LogFileName = szTempLogFileName

        ' 1.3) Start logging with the appropriate log mode
        g_objTab.Session.Log True, bAppend
    end if

    ' 2) Go through each send/expect...  If the ExpectN string is empty,
    '    don't bother waiting for it.
		 if send1 = "True" then
		 	g_objTab.Screen.Send "1" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "SCUP1.zb" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zb" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send2 = "True" then
		 	g_objTab.Screen.Send "2" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "param.xml" & chr(34) & "," & chr(34) & "/tffs/param.xml" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send3 = "True" then
		 	g_objTab.Screen.Send "3" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "HX330_R845.xex" & chr(34) & "," & chr(34) & "/tffs/HX330_R845.xex" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send4 = "True" then
		 	g_objTab.Screen.Send "4" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "HX330B2_R845.xex" & chr(34) & "," & chr(34) & "/tffs/HX330B2_R845.xex" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send5 = "True" then
		 	g_objTab.Screen.Send "5" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send "copy " & chr(34) & send_dir_zz & "XelSdk.zb" & chr(34) & "," & chr(34) & "/tffs/XelSdk.zb" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send6 = "True" then
		 	g_objTab.Screen.Send "6" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send "copy " & chr(34) & send_dir_zz & "XelApp.zb" & chr(34) & "," & chr(34) & "/tffs/XelApp.zb" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send7 = "True" then
		 	g_objTab.Screen.Send "7" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "SCUP1.zj" & chr(34) & "," & chr(34) & "/tffs/SCUP1.zj" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send8 = "True" then
		 	g_objTab.Screen.Send "8" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "boardproj.cmd" & chr(34) & "," & chr(34) & "/tffs/boardproj.cmd" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send9 = "True" then
		 	g_objTab.Screen.Send "9" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "vxWorks_8247a_256M.z" & chr(34) & "," & chr(34) & "/tffs/vxWorks_8247a_256M.z" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send10 = "True" then
		 	g_objTab.Screen.Send "10" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "R845_1588.zb" & chr(34) & "," & chr(34) & "/tffs/R845_1588.zb" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

		 if send11 = "True" then
		 	g_objTab.Screen.Send "11" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & "bmulib_8247a.zb" & chr(34) & "," & chr(34) & "/tffs/bmulib_8247a.zb" & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
    end if

  if check2_add = "True" then
		 	g_objTab.Screen.Send "12" & vbcr
		 	g_objTab.Screen.WaitForString "->"
    	g_objTab.Screen.Send  "copy " & chr(34) & send_dir_zz & send_add & chr(34) & "," & chr(34) & "/tffs/" & send_add & chr(34) & chr(13)
    	g_objTab.Screen.WaitForString "->"
  end if

    ' 3) Now that we're done, turn off logging.
    if check4_log then
        g_objTab.Session.Log False
        ' Restore the existing log file name for the current session
        g_objTab.Session.LogFileName = szSavedLogFileName
    end if


    crt.Dialog.Messagebox _
        "Operation completed."

    if check4_log then
        ' Once we have completed the work, bring up the log file in the default
        ' file handler.
        g_shell.Run chr(34) & send_logfile & chr(34)
    end if


End Sub

'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Function PromptForInput(byRef check1_all, _
													byRef send1,  byRef send2,   byRef send3,_
                        	byRef send4,  byRef send5,   byRef send6,_
                        	byRef send7,  byRef send8,   byRef send9,_
                        	byRef send10,  byRef send11,_
                        byRef check2_add, byRef send_add, _
                        byRef check3_dir, byRef send_dir, _
                        byRef check4_log, byRef send_logfile, byRef szAppendOrOverwrite )
' Sample function that prompts for the following information:
'   1) Send #1: First command to send to the remote
'   2) Expect #1: What to Expect after Send #1 is sent
'   3) Send #2: Second command to send to the remote
'   4) Expect #2: What to Expect after Send #2 is sent
'   5) Send #3: Third command to send to the remote
'   6) Expect #3: What to Expect after Send #3 is sent
'   7) LogOutput?  If this checkbox is enabled, a "LogFile" entry field will
'      become enabled, allowing the user to specify a log file in which
'      the output of the sent commands and their results will be stored.
'   8) LogFilename: Enabled when the LogOuput box is checked.  Specifies the
'      name of the log file that SecureCRT should use to log the commands
'      issued and their results.
'   9) AppendOrOverwrite?  Radio button value determines whether the log file
'      starts out a-fresh each time (overwrite), or appends to existing log
'      information.
' RETURNS: True or False, depending on whether or not the user presses "OK", or
'          "Cancel" from within the dialog.

    '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ' First step, set up the dialog (InternetExplorer)
    Set g_objIE = CreateObject("InternetExplorer.Application")
    g_objIE.Offline = True
    g_objIE.navigate "about:blank"

    ' Wait for the navigation to the "blank" web page to complete
    Do
        crt.Sleep 100
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
            "<input type=radio name='dir_locat' value='/home/bmu852' AccessKey='m' >/home/bmu852" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;" & _
            "<input type=radio name='dir_locat' value='/home/bmu852/scu' Accesskey='s' checked>/home/bmu852/scu" & _
        "<!--*******Part4: Log to file*************-->"  & _
        "<p></p>" & _
        "<input name='check_log' type='checkbox' onclick=""document.all('ButtonHandler').value='check_log';"" AccessKey='L'><u>L</u>og Output to File<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;" & _
            "<b>Log <u>f</u>ilename:</b><input name='log_filename' size='71' maxlength='512' AccessKey='f'><br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;" & _
            "<input type=radio name='log_mode' value='Append' AccessKey='A' ><u>A</u>ppend<br>" & _
        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;" & _
            "<input type=radio name='log_mode' value='Overwrite' Accesskey='w' checked>Over<u>w</u>rite<br>" & _
        "<!--*******Part5: OK or Cancel*************-->"  & _
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
    'g_objIE.height = 560
    'g_objIE.width = 640
    g_objIE.document.Title = "Custom Dialog Prompt"
    g_objIE.Visible = True

    ' Wait for the "dialog" to be displayed before we attempt to set any
    ' of the dialog's default values.
    Do
        crt.Sleep 100
    Loop While g_objIE.Busy

    Set objShell = CreateObject("WScript.Shell")
    objShell.AppActivate g_objIE.document.Title

    '设置初始值
    g_objIE.Document.All("check_all").Checked =  check1_all
    	g_objIE.Document.All("send_cmd1").Checked = send1
    	g_objIE.Document.All("send_cmd2").Checked = send2
    	g_objIE.Document.All("send_cmd3").Checked = send3
    	g_objIE.Document.All("send_cmd4").Checked = send4
    	g_objIE.Document.All("send_cmd5").Checked = send5
    	g_objIE.Document.All("send_cmd6").Checked = send6
    	g_objIE.Document.All("send_cmd7").Checked = send7
    	g_objIE.Document.All("send_cmd8").Checked = send8
    	g_objIE.Document.All("send_cmd9").Checked = send9
    	g_objIE.Document.All("send_cmd10").Checked = send10
    	g_objIE.Document.All("send_cmd11").Checked = send11
    g_objIE.Document.All("check_add").Checked = check2_add
      g_objIE.Document.All("manu_filename").Value = send_add
    g_objIE.Document.All("check_dir").Checked = check3_dir
    g_objIe.Document.All("check_log").Checked = check4_log
    	g_objIE.Document.All("log_filename").Value = send_logfile

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

    ' S2: check_dir is off   ?
    Select Case dir_locat
        Case "/home/bmu852"
            g_objIE.Document.All("dir_locat")(0).Select
            g_objIE.Document.All("dir_locat")(0).Checked = true
            g_objIE.Document.All("dir_locat")(0).Click       
        ' Note that "Append" is used both in the case where "Append" is
        ' specified, as well as in the case where the szAppendOrOverwrite
        ' value is unrecognized.  This is done as a "safe" default mechanism.
         Case "/home/bmu852/scu"
         Case Else
            g_objIE.Document.All("dir_locat")(1).Select
            g_objIE.Document.All("dir_locat")(1).Checked = false
            g_objIE.Document.All("dir_locat")(1).Click
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
            if Err.Number <> 0 then exit function

        ' Check to see which buttons have been clicked, and address each one
        ' as it's clicked.
        Select Case g_objIE.Document.All("ButtonHandler").Value
            Case "Cancel"
                ' Close the custom dialog box...
                g_objIE.Quit

                ' Exit the function with value of False
                exit function

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
                g_objIE.Quit

                ' Exit the function
                exit function

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
                  	
                  	' Disable all checks
                  	g_objIE.Document.All("send_cmd1").Disabled = True 
                  	g_objIE.Document.All("send_cmd2").Disabled = True 
                  	g_objIE.Document.All("send_cmd3").Disabled = True 
                  	g_objIE.Document.All("send_cmd4").Disabled = True 
                  	g_objIE.Document.All("send_cmd5").Disabled = True 
                  	g_objIE.Document.All("send_cmd6").Disabled = True 
                  	g_objIE.Document.All("send_cmd7").Disabled = True 
                  	g_objIE.Document.All("send_cmd8").Disabled = True 
                  	g_objIE.Document.All("send_cmd9").Disabled = True 
                  	g_objIE.Document.All("send_cmd10").Disabled = True 
                  	g_objIE.Document.All("send_cmd11").Disabled = True
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
                  	
                  	' enable all checks
                  	g_objIE.Document.All("send_cmd1").Disabled = False 
                  	g_objIE.Document.All("send_cmd2").Disabled = False 
                  	g_objIE.Document.All("send_cmd3").Disabled = False 
                  	g_objIE.Document.All("send_cmd4").Disabled = False 
                  	g_objIE.Document.All("send_cmd5").Disabled = False 
                  	g_objIE.Document.All("send_cmd6").Disabled = False 
                  	g_objIE.Document.All("send_cmd7").Disabled = False 
                  	g_objIE.Document.All("send_cmd8").Disabled = False 
                  	g_objIE.Document.All("send_cmd9").Disabled = False 
                  	g_objIE.Document.All("send_cmd10").Disabled = False 
                  	g_objIE.Document.All("send_cmd11").Disabled = False
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
        g_objTab.Screen.WaitForString "1324;l1@#$!@#$!@#$ This will never appear", 1
    Loop


End Function

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    