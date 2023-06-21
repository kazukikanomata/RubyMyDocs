#　学習用である
# map関数はブロック引数が1つだけ受け取ることができる。
komedaMenus = [['ミニシロノワール',100], ['ミルクコーヒー',0], ['豆菓子',0]]


komedaMenus.each_with_index do | (menu, price), i |
    puts "menu: #{menu} , price: #{price}円, i: #{i}"
end

# 配列の要素をすべて調査して、そこから同じものを取り除く。
# kindPrices = unitPrices.uniq
# puts "同じ種類のがくは？"
# puts
# kindPrices.map { |kindPrice| puts kindPrice.to_s + "円" }

# 　文字列配列をつくちゃう便利なやつら
a = %w(apple melon orange)

# 繰り返し処理の制御構造
numbers = [1,2,3,4,5]

# numbers.each do |n|
#     puts n
#     break if n == 5
# end

fruits = ['apple', 'melon' , 'orange']

fruits.each do | fruit |
    numbers.each do | n |
        next if n.even?
        puts "#{fruit} , #{n}"
    end
end

# p.120参照