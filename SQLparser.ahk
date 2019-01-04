#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^p::
SQLConditions = select|from|inner join|left join|where|union|group by|on|union|order by|], arguments

Loop, parse, SQLConditions, `|
{

   Send ^h
   Send ^a 
   Send %A_LoopField%
   Send {Tab}
   Send ^a
   Send \n%A_LoopField%
   Send {Ctrl Down}{Alt Down}{Enter Down}{Enter Up}{Alt Up}{Ctrl Up}
}
Return