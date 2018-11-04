#MaxHotkeysPerInterval 2000
#SingleInstance force
#NoEnv
SetWorkingDir %A_ScriptDir%
;DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, "", UInt, 2)

GroupAdd, Games, M:\Documents\Autohotkey\Scripts\AutoHotkey.ahk - AutoHotkey v1.1.30.00

GroupAdd, Games, ahk_exe DRAGON QUEST XI.exe
GroupAdd, Games, ahk_exe NMS.exe
GroupAdd, Games, ahk_exe TESV.exe
GroupAdd, Games, ahk_exe FortniteClient-Win64-Shipping.exe
GroupAdd, Games, ahk_exe BattleriteRoyale.exe
GroupAdd, Games, Sea of Thieves
GroupAdd, Games, ahk_exe ACOdyssey.exe
GroupAdd, Games, ahk_exe StarCitizen.exe
GroupAdd, Games, ahk_exe RustClient.exe
GroupAdd, Games, ahk_exe SpaceEngineers.exe
GroupAdd, Games, ahk_exe vermintide2.exe

\::LControl
]::LAlt

^f5::
	MsgBox, Reloaded
	Reload
+f5::Suspend
		
#IfWinActive, ahk_group Games
{		
	;DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, "C:\Users\jeff\Desktop\Jubal Headset.jpg", UInt, 2)

	F13::a
	F14::d
	Up::w
	Down::s

	Enter::Space
}
#IfWinNotActive, ahk_group Games
{
	;DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, "", UInt, 2)

	F13::SendInput {Lwin down}{Left}{Lwin up}                                                  ;Btn  1
	F14::SendInput {Lwin down}{Right}{Lwin up}                                                 ;Btn  2
	F13 & F14::WinMaximize, A																   ;Btn  1&2
	F14 & F13::WinMaximize, A																   ;Btn  2&1
	F15::MButton                                                                               ;Btn  3	
	F16::SendInput {LControl down}{LShift down}{LAlt down}{x}{LControl up}{LShift up}{LAlt up} ;Btn  4
	F17::Control                                                                               ;Btn  5
	F18::SendInput {Lwin down}{d}{Lwin up}                                                     ;Btn  6	
	F19::SendInput {LControl down}{LAlt down}{Pgdn}{LControl up}{LAlt up}                      ;Btn  7
	F20::SendInput {LControl down}{LAlt down}{Pgup}{LControl up}{LAlt up}                      ;Btn  8
	F21::Media_Next                                                                            ;Btn  9
	F22::Volume_Down                                                                           ;Btn 10
	F23::SendInput {Volume_Mute}                                                               ;Btn 11
	F24::Volume_Up                                                                             ;Btn 12
	
	~LButton & F13::SendInput {Lwin down}{LShift down}{Left}{Lwin up}{LShift up}
	~LButton & F14::SendInput {Lwin down}{LShift down}{Right}{Lwin up}{LShift up}
	~LButton & F15::WinMinimize, A
	
	/*
	#o::  ; Win+O hotkey that turns off the monitor.
	Sleep 1000  ; Give user a chance to release keys (in case their release would wake up the monitor again).
	SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
	; Turn Monitor Off
	; Note for the above: Use -1 in place of 2 to turn the monitor on.
	; Use 1 in place of 2 to activate the monitor's low-power mode.
	
	#+o::  ; Win+O hotkey that turns off the monitor.
	Sleep 1000  ; Give user a chance to release keys (in case their release would wake up the monitor again).
	SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
	*/
	Return
}
#IfWinActive, ahk_exe NMS.exe
{	
	F15::r ;3
	F16::z ;4
	F17::x ;5
	F18::f ;6
	F19::b ;7
	F20::v ;8
	F21::q ;9
	F22::t ;0
	F23::g ;-
	F24::h ;=

	Pgdn::Tab
	End::m

Return
}
#IfWinActive, ahk_exe DRAGON QUEST XI.exe
{
	End::x
	,::g
	.::j

	; F15 IS Y BUTTON ON CONTROLLER

	;F15::z

	F15 & up::y
	F15 & Down::h
	F15 & Left::g
	F15 & Right::j
	F15 & Enter::v
	F15 & BackSpace::BackSpace
	F15::Send, {z down} {z up}




;	F16::               ;4
;	F18::`              ;6
;	F21::               ;0
	F22::Volume_Down    ;0
	F23::p              ;-
	F24::Volume_Up      ;=

	Return
}
#IfWinActive, ahk_exe TESV.exe
{
	F15::Tab  ;Btn 3
	F16::r  ;Btn 4
	F17::p	;Btn 5
	F18::z	;Btn 6
	F19::4	;Btn 7
	F20::5	;Btn 8
	F21::6	;Btn 9
	F22::Volume_Down	;Btn0
	F23::f	;Btn -
	F24::Volume_Up	;Btn =
	.::f
	Pgdn::i
	End::m
	delete::c

	Return
}
#IfWinActive, ahk_exe FortniteClient-Win64-Shipping.exe
{
	F15::Tab
	F16::4
	F17::5
	F18::6
	F19::7
	F20::8
	F21::9
	F22::0
	F23::-
	F24::=

	Return
}
#IfWinActive, ahk_exe BattleriteRoyale.exe
{
	F15::f                ;Btn 3        SHOW DESKTOP BY DEFAULT
	F16::q                ;Btn 4        <CTRL><ALT><SHIFT>X BY DEFAULT
	F17::e                ;Btn 5        MMB BY DEFAULT
	F19::1                ;Btn 7        <CTRL><ALT><PGDN> BY DEFAULT
	F20::2                ;Btn 8        <CTRL><ALT><PGUP> BY DEFAULT
	F21::3                ;Btn 9        MEDIA NEXT BY DEFAULT
	F22::Volume_Down      ;Btn 0        VOLUME DOWN BY DEFAULT
	F23::Volume_Mute      ;Btn -        MUTE BY DEFAULT
	F24::Volume_Up        ;Btn =        VOLUME UP BY DEFAULT

	Return
}
#IfWinActive Sea of Thieves
{
	;	,::e				 ;Comma   
	.::f				 ;Period  Map Radisl
	F15::q               ;Btn 3   Item Radial
	;	F16::1               ;Btn 4        
	;	F17::2               ;Btn 5        
	;	F18::3               ;Btn 6        
	;	F19::4               ;Btn 7        
	;	F20::5               ;Btn 8        
	;	F21::6               ;Btn 9        
	;	F22::7               ;Btn 0        
	F23::x               ;Btn -   Stow/Drop       
	;	F24::                ;Btn =        
}
#IfWinActive ahk_exe ACOdyssey.exe
{
	,::e
	.::f
	\::c
	F15::q ;3
	F16::4 ;4
	F17::5 ;5
	F18::6 ;6
	F19::7 ;7
	F20::g ;8
	F21::r ;9
	F22::x ;0
	F23::t ;-
	F24::v ;=
	Pgdn::i
	End::m
}
#IfWinActive, ahk_exe StarCitizen.exe
{
	,::f

	F15::z                ;Btn 3
	F16::q                ;Btn 4
	F17::e                ;Btn 5
	F18::z                ;Btn 6
	F19::t                ;Btn 7
;	F20::                 ;Btn 8
	F21::v                ;Btn 9
	F22::c                ;Btn 0
	F23::-                ;Btn -
	F24::n                ;Btn =

	RShift::LShift
	Space::Enter
}
#IfWinActive, ahk_exe RustClient.exe
{
	F15::3                ;Btn 3
	F16::4                ;Btn 4
	F17::5                ;Btn 5
	F18::6                ;Btn 6
	F19::7                ;Btn 7
	F20::8                ;Btn 8
	F21::9                ;Btn 9
	F22::0                ;Btn 0
	F23::-                ;Btn -
	F24::=                ;Btn =

	Space::Enter
}
#IfWinActive, ahk_exe SpaceEngineers.exe
{
;	F15::                ;Btn 3
	F16::q                ;Btn 4
	F17::e                ;Btn 5
	F18::z                ;Btn 6
;	F19::                ;Btn 7
;	F20::                ;Btn 8
;	F21::                ;Btn 9
	F22::x                ;Btn 0
	F23::v                ;Btn -
	F24::l                ;Btn =

	Space::Enter
	Pause::Insert
	\::c
	,::f
	.::k
	Return
}


#IfWinActive, ahk_exe vermintide2.exe
{
	  ,::e                ;Left Scroll
	  .::f                ;Right Scroll

	F15::q                ; 3
	F16::4                ; 4
	F17::5                ; 5
	F18::6                ; 6
	F19::7                ; 7
	F20::8                ; 8
	F21::x                ; 9
	F22::Volume_Down      ; 0
	F23::t                ; -
	F24::Volume_Up        ; =
	
	End::m
	Pgdn::i
	Pgup::h
	Home::o
;	Delete::
	
;	RShift::LShift
;	Space::Enter
}



;***************************************************
;***************************************************
;***************************************************
;***************************************************
/*

;	,::e                  ;Left Scroll
;	.::f                  ;Right Scroll

;	F15::                ; 3
;	F16::                ; 4
;	F17::                ; 5
;	F18::                ; 6
;	F19::                ; 7
;	F20::                ; 8
;	F21::                ; 9
;	F22::                ; 0
;	F23::                ; -
;	F24::                ; =
	
;	End::m
;	Pgdn::i
;	Pgup::
;	Home::
;	Delete::
	
;	RShift::LShift
;	Space::Enter
*/