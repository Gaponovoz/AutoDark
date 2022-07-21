#SingleInstance Force
#NoTrayIcon
RegRead,L_LightMode,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme
If L_LightMode {
RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme,0
RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,AppsUseLightTheme   ,0
}
else {
RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme,1
RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,AppsUseLightTheme   ,1
}
run,RUNDLL32.EXE USER32.DLL`, UpdatePerUserSystemParameters `,2 `,True
ExitApp