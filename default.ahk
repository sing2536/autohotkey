#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, RegEx
SetCapsLockState, AlwaysOff
SetStoreCapsLockMode, Off 

; Disable Win+L
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 0

; Mac keyboard 1
LWin::Alt
LAlt::LWin

; Mac keyboard 2
;LWin::Ctrl
;LCtrl::Alt

; General
CapsLock & Tab:: SetCapsLockState, % (t:=!t) ?  "On" :  "Off"
CapsLock & i:: send {Up}
CapsLock & k:: send {Down}
CapsLock & j:: send {Left}
CapsLock & l:: send {Right}
CapsLock & h:: send {AppsKey}
CapsLock & p:: send {PgUp}
CapsLock & `;:: send {PgDn}
CapsLock & [:: send {Home}
CapsLock & ':: send {End}
CapsLock & d:: send {Alt Down}d{Alt Up}
CapsLock & f:: send {Alt Down}f{Alt Up}
CapsLock & c:: send {Alt Down}c{Alt Up}
CapsLock & BackSpace:: send {Del}
CapsLock & 4:: WinClose, A
CapsLock & w:: send {Ctrl Down}w{Ctrl Up}
CapsLock & r:: send #+s

; Media
CapsLock & F11:: send {Volume_Down}
CapsLock & F12:: send {Volume_Up}
PgDn:: send {Volume_Down}
PgUp:: send {Volume_Up}
del:: send {Media_Play_Pause}
Home:: send {Media_Next}
End:: send {Media_Prev}

; Auto reload script on save
~^s:: 
	IfWinActive, default.ahk 
		Sleep, 200 
		Reload
