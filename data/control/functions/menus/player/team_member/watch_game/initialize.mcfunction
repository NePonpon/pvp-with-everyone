#> control:menus/player/team_member/watch_game/initialize
#
# メニューのページ、位置、アイコン、説明などを設定
#

# 初期化
data remove storage control:menu Initialize
data modify storage control:menu Initialize set value {tag:{CtrlEnderChest:true,JumpTo:"Player.WatchGame-TeamMember"},Count:1b}

## アイコンとなるアイテムを指定
data modify storage control:menu Initialize.id set value "minecraft:spyglass"

## メニューの名前(JP)を指定
data modify storage control:menu Initialize.tag.display.Name set value '{"text":"観戦チームのメンバー","color":"gray"}'

## 説明文を指定(任意)
data modify storage control:menu Initialize.tag.display.Lore set value ['{"text":"メンバーの一覧","color":"white","italic":false}','{"text":""}']

## 表示するスロット番号を指定 byte型
data modify storage control:menu Initialize.Slot set value 22b

## その他追加したい情報を指定(任意)
#data modify storage control:menu Initialize.tag merge value {}

## 追加先のメニューページを指定(変更は任意)
data modify storage control:menu Menus.Player append from storage control:menu Initialize
