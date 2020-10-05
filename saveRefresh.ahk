#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SaveTradeRefresh(TheWindowTitle)
{

IfWinActive ahk_exe atom.exe {
Send, {Ctrl down}s{Ctrl up}
}

SetTitleMatchMode,2
DetectHiddenWindows, Off

IfWinExist, %TheWindowTitle%
{
WinGet, winid, ID, %TheWindowTitle%
DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
}

Send, {F5}
Return

}


F7::SaveTradeRefresh("<title_of_website>")
