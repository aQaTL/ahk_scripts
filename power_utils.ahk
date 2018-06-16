#NoTrayIcon

; Shutdown dialog
!+F4::
	RunWait wscript.exe ShutdownDialog.vbs
Return

; hardlock - lock computer and turn off monitors
#l::
	Run, hardlock.exe
Return

Pause::
	Run, hardlock.exe
Return

; Empty recycle bin

#!del::
	Run, emptyrecyclebin.exe
Return
