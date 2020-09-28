 ; uses Ctrl + e to tab through options on new event in google calendar, selects calendar beginning with w, then saves
 ; sleeps are necessary for delay in loading time, though could probably be tweaked slightly

^e::
Send, {Tab}
Send, {Tab}
Send, {Tab}
Send, {Tab}
Sleep, 500
Send, {Tab}
Send, {Tab}
Send, {Tab}
Send, {Tab}
Send, {Enter}
Sleep, 500
Send,  w
Sleep, 20
Send, {Ctrl down}s{Ctrl up}
return
