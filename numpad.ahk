#NoTrayIcon

NumpadDot::.

NumpadHome::
	Send {Volume_Mute}
Return

NumpadUp::
Return

NumpadPgUp::
Return

NumpadLeft::
Return

NumpadClear::
Return

NumpadRight::
Return

NumpadEnd::
Return

NumpadDown::
Return

NumpadPgDn::
Return

NumpadDel::
Return

NumpadIns::
Return

#IfWinActive ahk_exe doublecmd.exe
F10::
	SendInput {AppsKey}{Down 4}{Right}{Down 4}{Enter}
Return
