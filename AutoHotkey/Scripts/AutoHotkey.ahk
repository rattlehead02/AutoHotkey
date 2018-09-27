#MaxHotkeysPerInterval 2000
#SingleInstance force
#NoEnv
;#include <numpad>
SetWorkingDir %A_ScriptDir%

GroupAdd, Games, ahk_exe DRAGON QUEST XI.exe
GroupAdd, Games, NMS
GroupAdd, Games, No Man's Sky
GroupAdd, Games, ahk_exe FortniteClient-Win64-Shipping.exe
;Test Comment
\::Control
]::Alt

+f5::Suspend
^f5::Reload

#IfWinNotActive, ahk_group Games
{

;	Numpad1::SendInput {Lwin down}{Left}{Lwin up}
;	Numpad2::SendInput {Lwin down}{Right}{Lwin up}
	F13::SendInput {Lwin down}{Left}{Lwin up}
	F14::SendInput {Lwin down}{Right}{Lwin up}
	F15::SendInput {Lwin down}{d}{Lwin up}
	F16::SendInput {LControl down}{LShift down}{LAlt down}{x}{LControl up}{LShift up}{LAlt up}
	F17::MButton
	F18::Control
	F19::SendInput {LControl down}{LAlt down}{Pgdn}{LControl up}{LAlt up}
	F20::SendInput {LControl down}{LAlt down}{Pgup}{LControl up}{LAlt up}
	F21::Media_Next
	F22::Volume_Down
	F23::Volume_Mute
	F24::Volume_Up
	Return
}

#IfWinActive, ahk_group Games
{
	F13::a
	F14::d
	Up::w
	Down::s
	Enter::Space
}

#IfWinActive, ahk_exe DRAGON QUEST XI.exe
{
	nSleep = 50

	F15::z

	~w::up
	~a::left
	~s::down
	~d::right
	~Enter::v
	Esc::z
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

	/*SetKeyDelay, -1, 10
	WheelUp::
	WheelDown::
	If (A_ThisHotkey == A_PriorHotkey) && (PriorEvent > A_TickCount - 250)
	return
	PriorEvent := A_TickCount
	Send % "{blind}" (A_ThisHotkey = "WheelUp" ? "y" : "h")
	*/

	/*;,::g
	;.::j
	; F15 IS Y BUTTON ON CONTROLLER
	F15 & up::y
	F15 & Down::h
	F15 & Left::g
	F15 & Right::j
	F15 & Enter::v
	F15 & BackSpace::BackSpace
	F15 up::Send {Blind}{F15 down}{F15 up}
	*/
	End::x
	;F16::k
	;F18::`;
	;F21::ToolTip, Test, 100, 150
	F22::Volume_Down
	F23::p
	F24::Volume_Up
	Return

}

#IfWinActive No Man's Sky
{

	F13::r
	F16::z
	F17::x
	F18::f
	F19::b
	F20::v
	F21::9
	F22::t
	F23::g
	F24::h
	,::e
	.::c
	Pgdn::Tab
	End::m

	delete::
		SprintToggle := !SprintToggle
		If (SprintToggle)
		{
			Send, {w Down}
		}
		else
		{
			Send, {w up}
		}
			return
}

#IfWinActive, ahk_exe TESV.exe
{
	F13::z
	F16::1
	F17::2
	F18::3
	F19::4
	F20::5
	F21::6
	F22::7
	F23::8
	F24::
	,::e
	.::f
	Pgdn::i
	End::m
	delete::c
	Return

}

#IfWinActive, ahk_exe FortniteClient-Win64-Shipping.exe
{
	F15::3
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
