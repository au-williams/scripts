SetCapsLockState, alwaysoff

;DisplayFusion
Capslock::^+#d ;TOGGLE MONITOR FADE HOTKEY ... [SHIFT] + [WIN] + [CTRL] + [D]

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
