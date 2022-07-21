#SingleInstance force
Sleep 123
Process, Close, AutomaticDarkModeWin10+LITE_daemon.exe
Sleep 777
FileDelete, %A_Startup%\AutomaticDarkModeWin10+LITE_daemon.exe
TrayTip, Automatic Dark Mode Win10+ LITE, AUTOMATIC DARK MODE DAEMON REMOVED SUCCESSFULLY!., , 16
Sleep 4500
FileCopy, template.backup, template.ahk, 1
ExitApp