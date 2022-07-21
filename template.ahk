#SingleInstance force
#NoEnv
#NoTrayIcon

Loop
{
If (A_Hour>############# && A_Hour<@@@@@@@@@@@@@) ; Start of light hours and end of light hours, @=dark theme, #=light theme
{
	RegRead,L_LightMode,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme
	RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme,1
	RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,AppsUseLightTheme   ,1
	run,RUNDLL32.EXE USER32.DLL`, UpdatePerUserSystemParameters `,2 `,True
	
	sleep 7000000
}
Else
{
	RegRead,L_LightMode,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme
	RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,SystemUsesLightTheme,0
	RegWrite,Reg_Dword,HKCU,SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize,AppsUseLightTheme   ,0
	run,RUNDLL32.EXE USER32.DLL`, UpdatePerUserSystemParameters `,2 `,True

	sleep 6000000
}
Sleep 2000000
}
Return
