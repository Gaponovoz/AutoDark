#SingleInstance force
Sleep 333
RunWait, Ahk2Exe.exe /in template.ahk /out AutomaticDarkModeWin10+LITE_daemon.exe /bin "Unicode 32-bit.bin" /icon icon.ico /compress 2 /silent
Sleep 333
FileMove, AutomaticDarkModeWin10+LITE_daemon.exe, %A_Startup%, 1
TrayTip, Automatic Dark Mode Win10+ LITE, Dark mode schedule has been applied successfully!
Sleep 4500
FileCopy, template.backup, template.ahk, 1
Sleep 100
Run, "%A_Startup%\AutomaticDarkModeWin10+LITE_daemon.exe"
ExitApp