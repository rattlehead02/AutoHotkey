#MaxHotkeysPerInterval 2000
#SingleInstance force
#NoEnv
;#include <numpad>
SetWorkingDir %A_ScriptDir%

GroupAdd, Games, ahk_exe DRAGON QUEST XI.exe
GroupAdd, Games, NMS
GroupAdd, Games, No Man's Sky
GroupAdd, Games, M:\Documents\Autohotkey\Scripts\AutoHotkey.ahk - AutoHotkey v1.1.30.00
GroupAdd, Games, ahk_exe FortniteClient-Win64-Shipping.exe
GroupAdd, Games, ahk_exe TESV.exe

\::Control
]::Alt

^f5::Reload
+f5::Suspend

;LEGEND TO BE PASTED TO OTHER AREAS FOR CLARITY
;Btn  1
;Btn  2
;Btn  3
;Btn  4
;Btn  5
;Btn  6
;Btn  7
;Btn  8
;Btn  9
;Btn 10
;Btn 11
;Btn 12

#IfWinNotActive, ahk_group Games
{
	WinMaximize
	F13::SendInput {Lwin down}{Left}{Lwin up}                                                  ;Btn  1
	F14::SendInput {Lwin down}{Right}{Lwin up}                                                 ;Btn  2
	F13 & F14::WinMaximize, A
	F15::SendInput {Lwin down}{d}{Lwin up}                                                     ;Btn  3
	;F14 & F15::WinMinimize, A
	F16::SendInput {LControl down}{LShift down}{LAlt down}{x}{LControl up}{LShift up}{LAlt up} ;Btn  4
	F17::MButton                                                                               ;Btn  5
	F18::Control                                                                               ;Btn  6
	F19::SendInput {LControl down}{LAlt down}{Pgdn}{LControl up}{LAlt up}                      ;Btn  7
	F20::SendInput {LControl down}{LAlt down}{Pgup}{LControl up}{LAlt up}                      ;Btn  8
	F21::Media_Next                                                                            ;Btn  9
	F22::Volume_Down                                                                           ;Btn 10
	F23::Volume_Mute                                                                           ;Btn 11
	F24::Volume_Up                                                                             ;Btn 12
	Return
}

#IfWinActive, ahk_group Games
{
	F13::a
	F14::d
	Up::w
	Down::s
	home::
		sprintToggle:=true
		If sprintToggle:=true
		{
			Send, {w Down}
		}
		else
		{
			Send, {w up}
		}
		return
	Enter::Space
}

#IfWinActive, DRAGON QUEST XI
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




	F16::               ;4
	F18::`              ;6
	F21::               ;0
	F22::Volume_Down    ;0
	F23::p              ;-
	F24::Volume_Up      ;=

	Return

}

#IfWinActive No Man's Sky
{
	/*
	TO DO: Make F13-F24 INTO CONSTANT GLOBAL VARIABLES btn1=F13, btn2=F14, btn3=F15
	*/

	,::e   ;Lt Scroll
	.::c   ;Rt Scroll

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


}

#IfWinActive, ahk_exe TESV.exe
{
	F15::Tab  ;Btn 3
	F16::1  ;Btn 4
	F17::2	;Btn 5
	F18::z	;Btn 6
	F19::r	;Btn 7
	F20::p	;Btn 8
	F21::6	;Btn 9
;	F22::r	;Btn 0
	F23::f	;Btn -
;	F24::	;Btn =
	,::e
	.::f
	Pgdn::i
	End::m
	delete::c


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
}


/*


*****************************************************************
*****************************************************************
*****                                                       *****
*****       THIS IS CODE I WAS MESSING WITH FOR DQXI        *****
*****                                                       *****
*****************************************************************
*****************************************************************

nSleep = 50

	q::
		SendInput {F15 down}
		sleep nSleep
		SendInput {F15 up}
		sleep nSleep
		SendInput {right down}
		sleep nSleep
		SendInput {right up}
		sleep nSleep
		Loop, 2
		{
			SendInput {down down}
			sleep nSleep
			SendInput {down up}
			sleep nSleep
		}
		SendInput {v down}
		sleep nSleep
		SendInput {v up}
		sleep nSleep
		Loop, 6
		{
			SendInput {down down}
			sleep nSleep
			SendInput {down up}
			sleep nSleep
		}
		SendInput {v down}
		sleep nSleep
		SendInput {v up}
		Return

	c::
		SendInput {F15 down}
		sleep nSleep
		SendInput {F15 up}
		sleep nSleep
		SendInput {right down}
		sleep nSleep
		SendInput {right up}
		sleep nSleep
		Loop, 2
		{
			SendInput {down down}
			sleep nSleep
			SendInput {down up}
			sleep nSleep
		}
		SendInput {v down}
		sleep nSleep
		SendInput {v up}
		sleep nSleep
		Loop, 2
		{
			SendInput {down down}
			sleep nSleep
			SendInput {down up}
			sleep nSleep
		}
		SendInput {v down}
		sleep nSleep
		SendInput {v up}
		Return

	SetKeyDelay, -1, 10
	WheelUp::
	WheelDown::
	If (A_ThisHotkey == A_PriorHotkey) && (PriorEvent > A_TickCount - 250)
	return
	PriorEvent := A_TickCount
	Send % "{blind}" (A_ThisHotkey = "WheelUp" ? "y" : "h")

	*/
