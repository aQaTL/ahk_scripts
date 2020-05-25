#NoTrayIcon

NumpadDot::.

NumpadHome::
	Send #7
Return

NumpadUp::
	Send #8
Return

NumpadPgUp::
	Send #9
Return

NumpadLeft::
	Send #4
Return

NumpadClear::
	Send #5
Return

NumpadRight::
	Send #6
Return

NumpadEnd::
	Send #1
Return

NumpadDown::
	Send #2
Return

NumpadPgDn::
	Send #3
Return

NumpadDel::
Return

NumpadIns::
	Send {Volume_Mute}
Return

#IfWinActive ahk_exe doublecmd.exe
F10::
	SendInput {Shift down}{F2}{Shift up}{Text}un7z.exe `%v
	SendInput {Enter}
Return
