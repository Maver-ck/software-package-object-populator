#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::
Sources = TOMCAT SHARED DEPENDENCIES,FIGAROWEB (ABERDEEN),FIGAROWEB (AJ BELL),FIGAROWEB (AJB IFPC),FIGAROWEB (AJB IMAS),FIGAROWEB (AJB MCRS),FIGAROWEB (AJB TEES),FIGAROWEB (BASE),FIGAROWEB (BGF),FIGAROWEB (BROOKS),FIGAROWEB (CHARLES STANLEY),FIGAROWEB (CHEVIOT),FIGAROWEB (DART),FIGAROWEB (F&C),FIGAROWEB (HEDLEY),FIGAROWEB (HENDERSON-ROWE),FIGAROWEB (HURLEY),FIGAROWEB (IRISH LIFE),FIGAROWEB (JARVIS),FIGAROWEB (JBS),FIGAROWEB (JHC),FIGAROWEB (LGTV),FIGAROWEB (NOVIA),FIGAROWEB (SCOTTISH WIDOWS),FIGAROWEB (SGS),FIGAROWEB (SIPPTRADE),FIGAROWEB (SSO),FIGAROWEB (STOCKTRADE),FIGAROWEB (TDWI ARAM),FIGAROWEB (TDWI ROSSIE HOUSE),FIGAROWEB (TDWI SLW),FIGAROWEB (WH IRELAND),FIGAROWEB (WITAN),MFIGARO API BASE,MFIGARO API CHEVIOT,MFIGARO API JHC

Loop, parse, Sources, `,
{
   Send {F7}
   Sleep 1000
   Send %A_LoopField%{Enter}
   Sleep 500
   Send {Tab}{Tab}1{Enter}
   Sleep 500
   Send {Tab}{Tab}*Change{Enter}
   Sleep 500
   Send {F10}
}
Return