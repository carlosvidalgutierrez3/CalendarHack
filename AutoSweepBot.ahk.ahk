#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

myNumber = 0;
^j::
while myNumber<10{
	Send, {LEFT}
	myNumber++
	Sleep 2000
}
reload
return