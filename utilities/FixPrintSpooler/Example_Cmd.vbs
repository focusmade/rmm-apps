Dim fileobj,App_x86,App_x64, tCmdLine
App_x86 = "FixSpooler.exe"
App_x64 = "FixSpooler_x64.exe"
tCmdLine = " /F"

Set fileobj = CreateObject("Scripting.FileSystemObject")
If (fileobj.FileExists(App_x86)) Then
	Set fileobj = WScript.CreateObject( "WScript.Shell" )
	fileobj.Run(App_x86 + tCmdLine)
Else if (fileobj.FileExists(App_x64)) Then
	Set fileobj = WScript.CreateObject( "WScript.Shell" )
	fileobj.Run(App_x64 + tCmdLine)
Else
	x=msgbox(App_x86 + " not found!" ,16, "www.sordum.org")
End If
End If
Set fileobj = Nothing
