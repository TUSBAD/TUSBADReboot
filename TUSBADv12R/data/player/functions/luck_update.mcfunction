#> player:luck_update
#
# 幸運エフェクトによるMP補正
#
#

scoreboard players operation @s MPMax -= @s Luck
scoreboard players operation @s MPMax += _ Luck
scoreboard players operation @s MP < @s MPMax
scoreboard players operation @s Luck = _ Luck