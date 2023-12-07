Home::
    if WinActive("Plex HTPC")
    {
        Send, {BackSpace}
    }
    else if WinExist("Plex HTPC")
    {
        WinActivate
    }
    else if WinActive("Steam Big Picture Mode")
    {
        Send, {ESC}
    }
    else if WinExist("Steam Big Picture Mode")
    {
        WinActivate
    }
    else
    {
        Run, "C:\Program Files (x86)\Steam\Steam.exe" -start steam://open/bigpicture
    }
return
