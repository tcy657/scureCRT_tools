Sub Main



' *** Connect the session ***

xsh.Session.Open "ssh://192.168.0.187"

' "/s C:\Users\Administor\AppData\Roaming\NetSarang\Xshell\Sessions\example.xsh"



xsh.Screen.Synchronous = true



xsh.Screen.WaitForString "login: "

xsh.Screen.Send "username"

xsh.Screen.Send VbCr

xsh.Session.Sleep 100



xsh.Screen.WaitForString "Password: "

xsh.Screen.Send "password"

xsh.Screen.Send VbCr

xsh.Screen.Send VbCr
xsh.Screen.Send VbCr
xsh.Screen.Send VbCr
xsh.Screen.Send VbCr
xsh.Screen.Send VbCr
xsh.Screen.Send VbCr
xsh.Screen.Send VbCr
xsh.Screen.Send VbCr

xsh.Session.Sleep 100



' *** Wait for Prompt Message ***

xsh.Screen.WaitForString "username@password"


' *** test ***                                         
xsh.Screen.Send  VbCr
xsh.Screen.WaitForString "[root@RCU845-2 ~]"                        
xsh.Screen.Send "ls"   & VbCr                                          
                                                                                   
                                                                                   
'' *** Set File Format ***                                                          
'                                                                                   
'Dim app, wb, ws                                                                    
'                                                                                   
'Set app       = CreateObject("Excel.Application")                                  
'                                                                                   
'Set wb   = app.Workbooks.Add                                                       
'                                                                                   
'set ws   = wb.Worksheets(1)                                                        
'                                                                                   
'                                                                                   
'                                                                                   
'xsh.Session.LogFilePath = "c:\example.log"                                         
'                                                                                   
'xsh.Session.StartLog                                                               
'                                                                                   
'                                                                                   
'                                                                                   
'Dim waitStrs                                                                       
'                                                                                   
'waitStrs = Array(Chr(10), "username@password")         ' make wait message as array
'                                                                                   
'                                                                                   
'                                                                                   
'Dim row, screenrow, readline, itmes                                                
'                                                                                   
'row = 1                                                                            
'                                                                                   
'                                                                                   
'                                                                                   
'' *** Send Command ***                                                             
'                                                                                   
'xsh.Screen.Send "cat /etc/passwd"                                                  
'                                                                                   
'xsh.Screen.Send VbCr                                                               
'                                                                                   
'xsh.Session.Sleep 100                                                              
'                                                                                   
'                                                                                   
'                                                                                   
'Dim result                                                                         
'                                                                                   
'                                                                                   
'                                                                                   
'' *** Read Data and Save it as an EXCEL File ***                                   
'                                                                                   
'Do                                                                                 
'                                                                                   
'While true                                                                         
'                                                                                   
'       result = xsh.Screen.WaitForStrings(waitStrs, 1000)                          
'                                                                                   
'                                                                                   
'                                                                                   
'       If result = 2 Then                                                          
'                                                                                   
'              Exit Do                                                              
'                                                                                   
'       End If                                                                      
'                                                                                   
'                                                                                   
'                                                                                   
'       screenrow = xsh.Screen.CurrentRow - 1                                       
'                                                                                   
'       readline  = xsh.Screen.Get(screenrow, 1, screenrow, 40)                     
'                                                                                   
'       items    = Split(readline, ":", -1)                                         
'                                                                                   
'                                                                                   
'                                                                                   
'       ws.Cells(row,1).Value = items(0)                                            
'                                                                                   
'       ws.Cells(row,2).Value = items(2)                                            
'                                                                                   
'                                                                                   
'                                                                                   
'       row = row + 1                                                               
'                                                                                   
'Wend                                                                               
'                                                                                   
'Loop                                                                               
'                                                                                   
'                                                                                   
'                                                                                   
'wb.SaveAs("C:\chart.xls")                ' save file path                          
'                                                                                   
'wb.Close                                                                           
'                                                                                   
'app.Quit                                                                           
'                                                                                   
'                                                                                   
'                                                                                   
'Set ws  = nothing                                                                  
'                                                                                   
'Set wb  = nothing                                                                  
'                                                                                   
'Set app = nothing                                                                  
'                                                                                   
                                                                                   
                                                                                   
xsh.Screen.Synchronous = false                                                     
                                                                                   
                                                                                   
                                                                                   
xsh.Session.StopLog                                                                
                                                                                   
                                                                                   
                                                                                   
End Sub                                                                            