#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WindowToFrontAndRefresh(TheWindowTitle)
{

SetTitleMatchMode,2
DetectHiddenWindows, Off

IfWinExist, %TheWindowTitle%
{
WinGet, winid, ID, %TheWindowTitle%
DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
}
Sleep 100
Send, {F5}
Return

}



F7::WindowToFrontAndRefresh("<title_of_website>")
