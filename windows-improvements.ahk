#NoTrayIcon

; Shutdown dialog
;!+F4::
;	RunWait wscript.exe ShutdownDialog.vbs
;Return

; hardlock - lock computer and turn off monitors

Pause::
	DllCall("User32.dll\LockWorkStation")
	DllCall("User32.dll\SendMessage", "Ptr", 0xffff, "UInt", 0x0112, "UPtr", 0xF170, "Ptr", 2)
Return

; Empty recycle bin

;#!del::
;	Run, emptyrecyclebin.exe
;Return

; Minimize window
#down::
	WinMinimize, A
Return
#s::
	WinMinimize, A
Return

;!`::
;	WinMinimize, A
;Return

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
#`::
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

AppsKey & PgUp::
	SendInput {Volume_Ip}
Return

AppsKey & Ins::
	SendInput {Media_Play_Pause}
Return

AppsKey & End::
	SendInput {Media_Prev}
Return

AppsKey::Send {AppsKey}

; Launch pssh
#^s::
	Run, "C:\Users\mmsol\.cargo\bin\pssh.exe"
Return

#c::
	DllCall("User32.dll\LockWorkStation")
	DllCall("User32.dll\SendMessage", "Ptr", 0xffff, "UInt", 0x0112, "UPtr", 0xF170, "Ptr", 2)
Return
