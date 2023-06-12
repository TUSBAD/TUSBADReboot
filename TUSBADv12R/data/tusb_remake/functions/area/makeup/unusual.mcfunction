#> tusb_remake:area/makeup/unusual
# 異空間に移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:ambient.basalt_deltas.active_3 master @s ~ ~ ~ 4 1.2 0
playsound minecraft:ambient.basalt_deltas.active_4 master @s ~ ~ ~ 4 1.3 0
title @s subtitle [{"text":"= ","color":"white"},{"text":"終末誘う","bold":true,"color":"#6c00f0"},{"text":"混沌","bold":true,"color":"#ec022c"},{"text":"との遭逢","bold":true,"color":"#6c00f0"},{"text":" =","color":"white"}]
title @s title [{"text":" 異 ","color":"#8400e6","bold":true,"underlined":true},{"text":" 空 ","bold":true,"underlined":true,"color":"#e60005"},{"text":" 間 ","bold":true,"underlined":true,"color":"#726c77"}]