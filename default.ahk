#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, RegEx
SetCapsLockState, AlwaysOff
SetStoreCapsLockMode, Off 

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
LAlt & BackSpace:: send ^a {BackSpace}
CapsLock & 4:: WinClose, A
CapsLock & w:: send {Ctrl Down}w{Ctrl Up}
CapsLock & r:: send #+s

; Media
CapsLock & =::Media_Next
CapsLock & -::Media_Prev
CapsLock & MButton::Volume_Mute
CapsLock & WheelUp::Volume_Up
CapsLock & WheelDown::Volume_Down
CapsLock & XButton2::Media_Next
CapsLock & XButton1::Media_Prev

; Auto reload script on save
#IfWinActive, default.ahk.*
~^s:: 
ToolTip, RELOADING AHK SCRIPT
Reload
#IfWinActive
