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

\::Control
]::Alt

^f5::Reload
+f5::Suspend

*



#IfWinActive, ahk_group Games
{		
	#Include <GamesGroup>
}
#IfWinNotActive, ahk_group Games
{
	#Include <NonGames>
}
#IfWinActive, ahk_exe NMS.exe
{	
	#Include <NMS>
}
#IfWinActive, ahk_exe DRAGON QUEST XI.exe
{
	#Include <DQXI>
}
#IfWinActive, ahk_exe TESV.exe
{
	#Include <TESV>
}
#IfWinActive, ahk_exe FortniteClient-Win64-Shipping.exe
{
	#Include <Fortnite>
}
#IfWinActive, ahk_exe BattleriteRoyale.exe
{
	#Include <BattleriteRoyale>
}
#IfWinActive Sea of Thieves
{
	#Include <SeaofTheives>
}
#IfWinActive ahk_exe ACOdyssey.exe
{
	#Include <ACO>
}
#IfWinActive, ahk_exe StarCitizen.exe
{
	#Include <StarCitizen>
}
#IfWinActive, ahk_exe RustClient.exe
{
	#Include <Rust>
}
#IfWinActive, ahk_exe SpaceEngineers.exe
{
	#Include <SpaceEnginers>	
}

;***************************************************
;***************************************************
;***************************************************
;***************************************************
/*
F15::                ;Btn 3
F16::                ;Btn 4
F17::                ;Btn 5
F18::                ;Btn 6
F19::                ;Btn 7
F20::                ;Btn 8
F21::                ;Btn 9
F22::                ;Btn 0
F23::                ;Btn -
F24::                ;Btn =
*/
;***************************************************
;***************************************************
;***************************************************
;***************************************************

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
