#NoTrayIcon
#SingleInstance force
Sleep 123
Process, Close, AutomaticDarkModeWin10+LITE_daemon.exe
Sleep 333
FileDelete, %A_Startup%\AutomaticDarkModeWin10+LITE_daemon.exe
Sleep 500
FileCopy, template.backup, template.ahk, 1
Sleep 333
ExitApp