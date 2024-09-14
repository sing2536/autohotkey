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

; Map Function keys to Windows actions
F3::Send, {PrintScreen}
F4::Send, ^f
F5::Send, #h
F7::Media_Prev
F8::Media_Play_Pause
F9::Media_Next
F10::Volume_Mute
F11::Volume_Down
F12::Volume_Up

; Hold Caps Lock to use the actual function keys
CapsLock & F1::Send, {F1}
CapsLock & F2::Send, {F2}
CapsLock & F3::Send, {F3}
CapsLock & F4::Send, {F4}
CapsLock & F5::Send, {F5}
CapsLock & F6::Send, {F6}
CapsLock & F7::Send, {F7}
CapsLock & F8::Send, {F8}
CapsLock & F9::Send, {F9}
CapsLock & F10::Send, {F10}
CapsLock & F11::Send, {F11}
CapsLock & F12::Send, {F12}

; Auto reload script on save
#IfWinActive, default.ahk.*
~^s:: 
ToolTip, RELOADING AHK SCRIPT
Reload
#IfWinActive
