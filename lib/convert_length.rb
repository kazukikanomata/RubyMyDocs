UNITS = { m: 1.0 , ft: 3.28 , in: 39.37 } #追加や変更はされないので外側で定義する。

def convert_length(length, from: :m , to: :m)
    ( length / UNITS[from] * UNITS[to] ).round(2)
    # 1m → 39.37in　1 foot/feet（フット/フィート）= 30.48 cm
end


currencies = { japan: 'yen' , us: 'dollar' , india: 'rupee' }
puts currencies.keys # ハッシュを展開する作業げー
puts currencies.values #ハッシュのvalueを展開する
puts currencies.has_key?(:japan) # ハッシュの中に日本がありますか？

# くっそ便利
h = { us: 'dollar' , india: 'rupee' }
all_lists ={ japan: 'yen', **h} #ハッシュの値を展開してくれる。
puts all_lists

a = [ 'fish' , { drink: true, potato: false }]

puts a[0]
puts a[1]

# 注意　ハッシュの{}とブロックの{}がある！
# buy { 'drink' => true , 'potato' => false }, fish これだとブロックの{}として認識されてしまっている。あかん
# メソッドの第1引数では、必ず()をつける！！
puts ({ 'drink' => true , 'potato' => false }) #標準ではputsのかっこは省略できるが、エラーになる恐れがあるのでちゃんとかっこつける

# ハッシュを配列にもできる →いいね〜便利
puts currencies.to_a

# その逆
arrayScores = [['国語', 100], ['数学', 60], ['英語', 75]]
puts arrayScores.to_h

# hDefault = {} #デフォルトはnil

hDefault= Hash.new('Hello')
puts (hDefault[:Hello])

# ハッシュのデフォルト値がkeyとvalueとかになっている
h = Hash.new { | hash, key | hash[key] = 'hello'}
h[:foo]
h[:bar]

puts (h)

