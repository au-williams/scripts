Home::
    if (WinActive("ahk_exe Plex HTPC.exe")) {
        Send, {BackSpace}
    }
    else if (WinActive("ahk_exe steamwebhelper.exe")) {
        Send, {ESC}
    }
    else {
        if WinExist("ahk_exe Plex HTPC.exe")
            WinClose

        Run, "C:\Program Files (x86)\Steam\Steam.exe" -start steam://open/bigpicture
    }
return
