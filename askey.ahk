#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; ascii emoticons
::.angry::
random("(｀Д´),ヽ(`Д´)ﾉ,ლಠ益ಠ)ლ")
return
::.bear::
random("ʕ•ᴥ•ʔ,ʕᵔᴥᵔʔ")
return
::.denko::
random("(´・ω・｀),(´・ω・`)")
return
::.df::
::.doubleflip::
single("┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻")
return
::.donger::ヽ༼ຈل͜ຈ༽ﾉ
::.gib::
::.give::
single("༼ つ ◕_◕ ༽つ")
return
::.happy::\(ᵔᵕᵔ)/
::.hi::
::.wave::
random("´ ▽ ` )ﾉ,ヾ(＾∇＾)")
return
::.idk::w(°ｏ°)w
::.lenny::( ͡° ͜ʖ ͡°)
::.salute::(｀･ω･´)ゞ
::.shock::(°ロ°) {!}
::.shrug::¯\_(ツ)_/¯
::.stare::ಠ_ಠ
::.tf::
::.tableflip::
single(random("(╯°□°）╯︵ ┻━┻,(ノಠ益ಠ)ノ彡┻━┻"))
return
::.uf::
::.unflip::
single("┬─┬﻿ ノ( ゜-゜ノ)")
return

; useful shortcuts
::.em::
::.dash::
single("—")
return
::.div::
::.divide::
single("÷")
return
::.ge::
::.greaterequal::
single("≥")
return
::.le::
::.lesserequal::
single("≤")
return
::.half::½
::.mul::
::.multiply::
single("×")
return
::.pe::
::.plusequal::
single("±")
return
::.pi::π
::.quarter::¼
::.que::¿
::.tri::
::.triangle::
single("▲")
return

; overflow input
single(_input) {
    SendInput % _input
}

; get array item
random(_input) {
    array := StrSplit(_input, ",")
    Random, i, 1, array.MaxIndex()
    Send % array[i]
}
