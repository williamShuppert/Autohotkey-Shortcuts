#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

; #Warn  ; Enable warnings to assist with detecting common errors.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Home/End Shortcuts -----------------------------------------

^[::Send {Home}
^]::Send {End}

^+[::Send {End}+{Home}
^+]::Send {Home}+{End}

; Enter Shortcuts --------------------------------------------

^Enter::Send, {End}{Enter}
^+Enter::Send, {End}+{Home 2}

; Backspace/Delete Shortcuts ----------------------------------------

!Backspace::Send, {Delete}
; ^+Backspace::Send, {End}+{Home 2}^c{Backspace}{Backspace}

; Arrow Shortcuts --------------------------------------------

^i::Send {Up}
^k::Send {Down}
^j::Send {Left}
^l::Send {Right}

^+i::Send +{Up}
^+k::Send +{Down}
^+j::Send +{Left}
^+l::Send +{Right}

; Move Line Up/Down -------------------------------------------

!i::Send, !{Up}
!k::Send, !{Down}

^!i::Send, {End}+{Home 2}^c{Backspace}{Backspace}{Home}{Enter}{Up}^v
^!k::Send, {End}+{Home 2}^c{Backspace}{Backspace}{Down}{End}{Enter}^v