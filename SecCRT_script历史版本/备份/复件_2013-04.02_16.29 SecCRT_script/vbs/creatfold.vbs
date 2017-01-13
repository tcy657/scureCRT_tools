Sub CreateFolder
   Dim fso, fldr
   Set fso = CreateObject("Scripting.FileSystemObject")
   Set fldr = fso.CreateFolder("C:\MyTest")
   Response.Write "Created folder: " & fldr.Name
End Sub

CreateFolder
