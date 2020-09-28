 ; for adding different bracket style to date in filenames

 ; Ctrl + [ 
 ; insert [ go 4 spaces right insert ] press enter
 ; Ctrl + ]
 ; insert ] go 4 spaces left insert [ press enter
 ; Ctrl + Shift + [
 ; delete char to right of cursor, insert [ go 4 spaces right insert ] delete char to right of cursor, press enter
 ; Ctrl + Shift + ]
 ; delete char to left of cursor, insert ] go 4 spaces left insert [ delete char to left of cursor, press enter


^[::
Send, [
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
Send, ]
Send, {Enter}
return

^]::
Send, ]
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, [
Send, {Enter}
return

^+[::
Send, {Del}
Send, [
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
Send, ]
Send, {Del}
Send, {Enter}
return

^+]::
Send, {BS}
Send, ]
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {BS}
Send, [
Send, {Enter}
return
