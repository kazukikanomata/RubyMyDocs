module Loggable
    
end

class Product
    include Loggable
end

puts Product.include?(Loggable) #モジュールありますか？のコマンド

puts Product.included_modules #includeされているモジュールの配列が帰ってくる

puts Product.ancestors #祖先の全もじゅーるが返ってくる

p Array.include?(Enumerable)
p Hash.include?(Enumerable)
p Range.include?(Enumerable)
p 2 <=>'abc'