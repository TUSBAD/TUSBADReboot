#> tusb_remake:area/makeup/niflheimr
# ニヴルに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:ambient.underwater.loop.additions.ultra_rare_4 master @p ~ ~ ~ 4 1.1 0
playsound minecraft:ambient.underwater.loop.additions.ultra_rare_4 master @p ~ ~ ~ 4 1.101 0
playsound minecraft:ambient.underwater.loop.additions.ultra_rare_4 master @p ~ ~ ~ 4 1.3 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"氷点下","bold":true,"color":"#7adeff"},{"text":"の","bold":true,"color":"#ffffff"},{"text":"氷下","bold":true,"color":"#7adeff"},{"text":"の都","bold":true,"color":"#ffffff"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"ニヴルヘイム","color":"#2e62ff","bold":true,"underlined":true}