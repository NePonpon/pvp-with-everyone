#> item:items/weapon/covert_sword/click
#
# アイテムクリック時に処理を実行するための条件を指定する
#  item:items/weapon/covert_sword/click/0
# を実行するようにする
#
# このアイテムかどうかの判別は
#
# <Item>.tag{ItemName:"covert_sword"}
#
# のパスと条件を使う
#

# メインハンドにアイテムを持っていた場合の例
# execute if data storage common: Inventorys.SelectedItem.tag{ItemName:"covert_sword"} run function item:items/weapon/covert_sword/click/0
