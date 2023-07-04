def greet_ja(&block)
    texts = ['おはよう', 'こんにちは', 'こんばんは']
    greet_common(texts,&block)
end

def greet_en(&block)
    texts = ['God', 'he', 'gn']
    greet_common(texts, &block)
end

def greet_common(texts, &block)
    puts texts[0]
    puts block.call(texts[1])
    puts texts[2]
end

greet_ja do | text |
    text * 2
end

greet_en do | text |
    text.upcase
end

# おはよう　こんにちはこんにちは こんばんは
# God HE gn


def greet(&block)
    puts 'おはよう'
    text =
    # ブロックパラメータの数で処理を分ける
    if block.arity == 1
        yield 'こんにちは'
    elsif block.arity == 2
        yield 'こんに', 'ちは'
    end
    puts text
    puts 'こんばんは'
end

greet do | text |
    text * 2
end

greet do | text_1, text_2 |
    text_1 * 2 + text_2 * 2
end