#Persistent  ; Keeps the script running

; Define a variable to track the time the button was pressed
global buttonPressedTime := 0

; Define the Home key as the trigger for specified actions
Home::
    ; Get the current tick count when the button is pressed
    buttonPressedTime := A_TickCount
    KeyWait, Home  ; Wait for the Home key to be released

    ; Calculate the duration the button was held down
    heldDuration := A_TickCount - buttonPressedTime

    ; If the button was held for at least one second, minimize the active window
    if (heldDuration >= 1000) {
        WinMinimize, A  ; Minimize the active window
    }
    else {
        ; Check if the active window is 'Plex HTPC'
        if WinActive("Plex HTPC") {
            Send, {BackSpace}  ; Send the Backspace key
        }
        ; Check if the window 'Plex HTPC' exists but is not active
        else if WinExist("Plex HTPC") {
            WinActivate  ; Activate the 'Plex HTPC' window
        }
        ; Check if the active window is 'Steam Big Picture Mode'
        else if WinActive("Steam Big Picture Mode") {
            Send, {ESC}  ; Send the Escape key
        }
        ; Check if the window 'Steam Big Picture Mode' exists but is not active
        else if WinExist("Steam Big Picture Mode") {
            WinActivate  ; Activate the 'Steam Big Picture Mode' window
        }
        else {
            ; If none of the specified windows are active or exist, run Steam in Big Picture Mode
            Run, "C:\Program Files (x86)\Steam\Steam.exe" -start steam://open/bigpicture
        }
    }
return
