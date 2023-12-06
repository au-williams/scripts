Home::
    if (WinActive("Plex HTPC"))
    {
        Send, {BackSpace}
    }
    else if WinActive("Steam Big Picture Mode")
    {
        Send, {ESC}
    }
    else
    {
        if WinExist("Plex HTPC")
            WinClose

        Run, "C:\Program Files (x86)\Steam\Steam.exe" -start steam://open/bigpicture
    }
return
