# スタックとキュー

# 先入先出法
queue = []

# 要素を末尾に追加する
queue.push '田中'
queue.push '鈴木'

# 先頭の要素を取得して削除
queue.shift #=> "田中"
queue.shift #=> "鈴木"
puts queue

# 後入れ先出法
stack = []

stack.push '大きい皿'
stack.push '小さい皿'

# 末尾の要素を取得して削除する

stack.pop #=>小さい皿
stack.pop #=>大きい皿
