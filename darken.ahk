#SingleInstance Force
#NoTrayIcon
RegRead,L_LightMode,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme
RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme,0
RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,AppsUseLightTheme   ,0
run,RUNDLL32.EXE USER32.DLL`, UpdatePerUserSystemParameters `,2 `,True
ExitApp