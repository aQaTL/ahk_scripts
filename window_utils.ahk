#NoTrayIcon

; Minimize window
#down::
	WinMinimize, A
Return
#del::
	WinMinimize, A
Return
!`::
	WinMinimize, A
Return

; Toggle maximize window
#enter::
#Up::
	WinGet, Status, MinMax, A
	if (Status = 1) {
		WinRestore, A
	} else if (Status = -1) {
		WinRestore, A
	} else {
		WinMaximize, A
	}
Return

; Always on top 
#!enter:: 
	Winset, Alwaysontop, , A
Return

; Close window by win key + tilda
#ESC::
	WinClose, A
Return

SwitchWindowTitleBar() {
	static titleBar := true
	if (titleBar) {
		WinSet, Style, -0xC00000, A
	} else {
		WinSet, Style, +0xC00000, A
	}
	titleBar := !titleBar
}

#!\::SwitchWindowTitleBar()

; Next desktop
!F1::
	SendInput #^{Left}
	Return

; Previous desktop 
!F2:: 
	SendInput #^{Right}
	Return

