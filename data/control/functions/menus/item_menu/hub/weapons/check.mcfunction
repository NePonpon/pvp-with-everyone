#> control:menus/item_menu/hub/weapons/check

## このメニューが選ばれたら処理を実行
execute unless score @s CtrlEnderChest matches 1 store success score @s CtrlEnderChest run clear @s #common:all{JumpTo:"ItemMenu.Hub.Weapons"} 0
execute if score @s CtrlEnderChest matches 1 run function control:menus/item_menu/hub/weapons/act/0
scoreboard players set @s[scores={CtrlEnderChest=1}] CtrlEnderChest 2