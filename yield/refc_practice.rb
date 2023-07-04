# yieldを使わない書き方
def greet(&block)
    puts 'おはよう'
    # call メソッドを使ってブロックを実行する
    text = block.call('こんにちは')
    puts text
    puts 'こんばんは'
end

greet do | text |
    text * 2
end