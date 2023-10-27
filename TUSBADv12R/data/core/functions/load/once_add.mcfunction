#> core:load/once_add
#
# #load時に一回だけ実行される処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

#> ADのverを設定
    data modify storage ad_remake: mapversion set value "1 α"

#> 各種Prefixを設定
    data modify storage ad_remake: Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage ad_remake: Prefix.TIPS set value "§bTIPS >> §r"
    data modify storage ad_remake: Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage ad_remake: Prefix.FAILED set value "§7FAILED >> §r"
    data modify storage ad_remake: Prefix.ERROR set value "§cERROR >> §r"
    data modify storage ad_remake: Prefix.CRIT set value "§4CRITICAL >> §r"
    function core:load/bad_effect_message

#> ディメンション設定
data modify storage ad_remake: area_name set value {underworld:"???",cloudia:"???",table_mountain:"???",gullivers_land:"???",tocult_colde:"???",trade:"???",purgatory:"???",rev_skyland:"???",library:"???",airport:"???",ancient:"???",another:"???",niflheimr:"???",unusual:"???",imaginary:"???"}
data modify storage ad_remake: conquer.count set value {skyland:0,nether:0,end:0,underworld:0,cloudia:0,table_mountain:0,gullivers_land:0,tocult_colde:0,trade:0,purgatory:0,rev_skyland:0,library:0,airport:0,ancient:0,another:0,niflheimr:0,unusual:0,imaginary:0}

#> forceload chunks
#一時的にデバッグエリアの10000,10000にマーカー群を配置する
#変更の余地あり
    execute in area:test run forceload add 10001 10001
    execute in area:test run setblock 10002 2 10002 shulker_box
    execute in area:test positioned 10005 5 10005 run function calc:system_marker/tp_00000
    execute in area:test positioned 10005 5 10005 run function calc:system_marker/tp_00001
    execute in area:test positioned 10005 5 10005 run function calc:system_marker/tp_00002

#> ステータススコア
    scoreboard objectives add Level dummy {"text":"レベル"}
    scoreboard objectives add Job dummy {"text":"職業"}
    scoreboard objectives add Exp dummy {"text":"経験値"}
    scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
    scoreboard objectives add HP dummy {"text": "HP","color": "#ff0053","bold": true}
    scoreboard objectives add HPMax dummy {"text":"HP最大値"}
    scoreboard objectives add HPHealing dummy {"text":"HP回復量"}
    scoreboard objectives add MP dummy {"text": "MP","color": "#3ecfff","bold": true}
    scoreboard objectives add MPMax dummy {"text":"MP最大値"}
    scoreboard objectives add MPRegen dummy {"text":"MP回復量"}
    scoreboard objectives add MPCount dummy {"text":"MP回復カウント"}
    scoreboard objectives add ElementPyro dummy {"text":"炎属性値"}
    scoreboard objectives add ElementHydro dummy {"text":"水属性値"}
    scoreboard objectives add ElementCryo dummy {"text":"氷属性値"}
    scoreboard objectives add ElementElectro dummy {"text":"雷属性値"}
    scoreboard objectives add ElementAnemo dummy {"text":"風属性値"}
    scoreboard objectives add ElementDendro dummy {"text":"草属性値"}
    scoreboard objectives add ElementLumo dummy {"text":"光属性値"}
    scoreboard objectives add ElementUmbro dummy {"text":"闇属性値"}
    scoreboard objectives add SP dummy {"text":"スキルポイント"}
    scoreboard objectives add ATK dummy {"text":"物理攻撃力"}
    scoreboard objectives add MATK dummy {"text":"魔法攻撃力"}
    scoreboard objectives add DEF dummy {"text":"物理防御力"}
    scoreboard objectives add MDEF dummy {"text":"魔法防御力"}
    scoreboard objectives add LUCK dummy {"text":"運"}
    scoreboard objectives add Damage dummy {"text":"ダメージ"}
    scoreboard objectives add StoredDamage dummy {"text":"累積ダメージ"}

#> 変数スコア
    scoreboard objectives add _ dummy {"text":"一時変数 その1"}
    scoreboard objectives add __ dummy {"text":"一時変数 その2"}
    scoreboard objectives add Calc dummy {"text":"計算変数"}

#> リセット必須トリガー
    scoreboard objectives remove FirstJoin

#> トリガー
### tusb_remake側と重複があるので完成後remake側を削除したほうがよさそう。
    scoreboard objectives add FirstJoin minecraft.custom:play_time {"text": "初回ログイン"}
    scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒クリック"}
    scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}

#> スキルデータ登録
    function player:skill/core/set_init