#> tusb_remake:area/makeup/skyland_high
# 通常世界上層に移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
execute at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 4 0.75 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"上 層","bold":true,"color":"#ff3948"},{"text":" =","color":"#ffffff"}]
title @s title [{"text":"新 ","color":"#ff3c3c","bold":true,"underlined":true},{"text":"通","color":"#cf53ff","bold":true,"underlined":true},{"text":"常","bold":true,"underlined":true,"color":"#ff3948"},{"text":"世界","bold":true,"underlined":true,"color":"#cf53ff"}]
