#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; ascii emoticons

::.angry::
random("(｀Д´),ヽ(`Д´)ﾉ")
return
::.bear::
random("ʕ•ᴥ•ʔ,ʕᵔᴥᵔʔ")
return
::.df::
::.doubleflip::
choose("┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻")
return
::.donger::ヽ༼ຈل͜ຈ༽ﾉ
::.gib::
::.give::
choose("༼ つ ◕_◕ ༽つ")
return
::.happy::\(ᵔᵕᵔ)/
::.lenny::( ͡° ͜ʖ ͡°)
::.shrug::¯\_(ツ)_/¯
::.stare::ಠ_ಠ
::.tf::
::.tableflip::
choose(random("(╯°□°）╯︵ ┻━┻,(ノಠ益ಠ)ノ彡┻━┻"))
return
::.uf::
::.unflip::
choose("┬─┬﻿ ノ( ゜-゜ノ)")
return

; useful shortcuts
::.em::
::.dash::
choose("—")
return
::.div::
::.divide::
choose("÷")
return
::.ge::
::.greaterequal::
choose("≥")
return
::.le::
::.lesserequal::
choose("≤")
return
::.half::½
::.mul::
::.multiply::
choose("×")
return
::.pe::
::.plusequal::
choose("±")
return
::.pi::π
::.quarter::¼
::.que::¿
::.tri::
::.triangle::
choose("▲")
return

; overflow input
choose(_input) {
    SendInput % _input
}

; get array item
random(_input) {
    array := StrSplit(_input, ",")
    Random, i, 1, array.MaxIndex()
    Send % array[i]
}