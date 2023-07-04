def greet
    puts 'おはよう'
    if block_given? #ブロックがありますか？どうですか？
        yield #ブロック処理を呼び出すんね。
    end
    text = yield 'こんにちは' #引数の書き方独特
    puts text
    puts 'こんばんは'
end


greet do | text |
    puts text * 2
end