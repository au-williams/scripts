SetCapsLockState, off
SetCapsLockState, alwaysoff

;DisplayFusion
Capslock::^+#d ;TOGGLE MONITOR FADE HOTKEY ... [SHIFT] + [WIN] + [CTRL] + [D]

;Program shortcuts
Capslock & `::Run powershell.exe

;Media controls
Capslock & LAlt::Send {MEDIA_PREV}
Capslock & WheelLeft::Send {MEDIA_PREV}
Capslock & RAlt::Send {MEDIA_NEXT}
Capslock & WheelRight::Send {MEDIA_NEXT}
Capslock & Space::Send {MEDIA_PLAY_PAUSE}
Capslock & WheelDown::Send {VOLUME_DOWN}
Capslock & WheelUp::Send {VOLUME_UP}
Capslock & MButton::Send {VOLUME_MUTE}

;Special characters
Capslock & .:: •
Capslock & -:: —
Capslock & \::Send {ASC 0173}

;60% keyboard support
Capslock & Up::Send {PgUp}
Capslock & Down::Send {PgDn}
Capslock & Left::Send {Home}
Capslock & Right::Send {End}
Capslock & Backspace::Send {Delete}

Capslock & Delete::Send {Numpad1}
Capslock & End::Send {Numpad2}
Capslock & PgDn::Send {Numpad3}
Capslock & Insert::Send {Numpad4}
Capslock & Home::Send {Numpad5}
Capslock & PgUp::Send {Numpad6}
Capslock & PrintScreen::Send {Numpad7}
Capslock & ScrollLock::Send {Numpad8}
Capslock & Pause::Send {Numpad9}