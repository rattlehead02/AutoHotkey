DllCall("SystemParametersInfo", UInt, 0x14, UInt, 0, Str, "", UInt, 2)

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
	F23::SendInput {Volume_Mute}                                                                   ;Btn 11
	F24::Volume_Up                                                                             ;Btn 12
	
	~LButton & F13::SendInput {Lwin down}{LShift down}{Left}{Lwin up}{LShift up}
	~LButton & F14::SendInput {Lwin down}{LShift down}{Right}{Lwin up}{LShift up}
	~LButton & F15::WinMinimize, A
	
	#o::  ; Win+O hotkey that turns off the monitor.
	Sleep 1000  ; Give user a chance to release keys (in case their release would wake up the monitor again).
	SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
	; Turn Monitor Off
	; Note for the above: Use -1 in place of 2 to turn the monitor on.
	; Use 1 in place of 2 to activate the monitor's low-power mode.
	
	#+o::  ; Win+O hotkey that turns off the monitor.
	Sleep 1000  ; Give user a chance to release keys (in case their release would wake up the monitor again).
	SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.

	Return