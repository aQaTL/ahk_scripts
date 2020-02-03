#NoTrayIcon

; Shutdown dialog
!+F4::
	RunWait wscript.exe ShutdownDialog.vbs
Return

; hardlock - lock computer and turn off monitors

Pause::
	Run, hardlock.exe
Return

; Empty recycle bin

#!del::
	Run, emptyrecyclebin.exe
Return
