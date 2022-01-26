SetCapsLockState, alwaysoff

;DisplayFusion
Capslock::^+#d ;TOGGLE MONITOR FADE HOTKEY ... [SHIFT] + [WIN] + [CTRL] + [D]

;Media controls
Capslock & LAlt::Send {MEDIA_PREV}
Capslock & RAlt::Send {MEDIA_NEXT}
Capslock & Space::Send {VOLUME_MUTE}
Capslock & WheelDown::Send {VOLUME_DOWN}
Capslock & WheelUp::Send {VOLUME_UP}

;Special characters
Capslock & .:: •
Capslock & -:: —