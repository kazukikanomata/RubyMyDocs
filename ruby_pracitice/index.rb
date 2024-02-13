# amari = 10 % 3

# if amari != 0 then
#     puts("割り切れませんでした")
#     puts("あまりは"+ amari.to_s + "です")
# end

# ary = [2005, 2006, 2007, 2008]
# puts ary[1];

# 入力された数字が文字の数字として返ってくる

# key valueの扱い方

ary = Array["赤","青","緑"]

hash = { "MIKE" => 23, "Ken" => 27}

puts "数字を入れてください"
number = gets.to_i

if number.is_a?(Integer) then
    result = number + 123
    ary.push(result)
    hash.store(ary[0], ary[3]) # {"Mike"=>23, "Ken"=>27, "赤"=>246}
    hash.each{
        | key, value |
        if !key.match(/[a-z]/) then
            puts "どんまい"
        elsif key.is_a?(String) then
                puts "それは#{key}"
        end
    }
else 
    result = "これは入力した文字です" + number
    puts result
end