#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
#$language = "VBScript"

#$interface = "1.0"

 

Sub Main()

 

    ' This script should be run by CRT that has two

    ' /ARG parameters for a hostname and port, for example:

    '

    ' CRT.exe /ARG myhostname /ARG 5555

    

    ' Detect lack of arguments.

    If crt.Arguments.Count <> 2 Then

        MsgBox "This script requires hostname and port 

        arguments"

        Exit Sub

    End If

    

    '

    MsgBox "Connecting to hostname: " & crt.Arguments(0)

    MsgBox "Connecting to port: " & crt.Arguments(1)

    

    ...

 

End Sub

End Sub
