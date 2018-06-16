#NoTrayIcon

; Minimize window
#down::
	WinMinimize, A
Return
#del::
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
#^enter:: 
	Winset, Alwaysontop, , A
Return

; Map PrintScreen key to run snipping tool
PrintScreen::
	Run SnippingTool.exe
Return

; Close window by win key + tilda
#`::
	WinClose, A
Return
