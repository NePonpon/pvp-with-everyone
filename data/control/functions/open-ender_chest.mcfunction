#> control:open-ender_chest
#
# 参考 [Ai-Akaishi/X9EnderChest](https://github.com/Ai-Akaishi/X9EnderChest)
#
# エンダーチェストを開けた時、設定画面を表示する。
#

## 開けた時、アイテムをセット
#Not クリエイティブ
execute if entity @s[gamemode=!creative] run function control:item_set/no-creative
#クリエイティブ
execute if entity @s[gamemode=creative] run function control:item_set/select

## メニュー操作中タグ付与
tp ~ ~ ~
scoreboard players reset @s EnderChestClose
tag @s add CtrlEnderChest

## メニュー操作tick起動
function control:tick

scoreboard players reset @s CtrlEnderChest
advancement revoke @s only control:open-ender_chest