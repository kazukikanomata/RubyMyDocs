numbers = [1,2,3,4,5]
new_numbers = numbers.map{ |n| n * 10}
# puts new_numbers

range = 1..5 # 1以上5以下
puts range.include?(0) #false
puts range.include?(1) #true

range = 1...5 #1以上5未満
puts range.include?(6) #false

# puts numbers[1..3]

# 値が連続する配列を作る
puts (1..5).to_a

number_s =(1..4).to_a
sum = 0
number_s.each { |n| sum += n }
puts sum

# 配列取得する長さを決めることができる。
a = [1, 2, 3, 4, 5]
a[1,3] # → a[1]を含めた3つを取り出す。

# target
a.values_at(0,2,4) # → a[0]とa[2]とa[4]を取りだす

puts

#　引数を制限なし。割り当てから漏れた引数　→ 可変長引数
def greet(*names)
    "#{names.join('と')},こんにちは！"
end
puts greet('田中さん')
puts greet('田中さん','鈴木さん')

#arrayCreate() 第2引数でデフォルト値を設定できる　→ これは問題がある p.141
initZeroArray = Array.new(5,0)

#　デフォルト値は、引数で書いておくのがBetter
initZeroArraySafety = Array.new(5) {'default'}
str = initZeroArraySafety[0]
str.upcase!
puts initZeroArraySafety