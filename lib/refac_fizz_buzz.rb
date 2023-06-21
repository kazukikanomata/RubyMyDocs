# fizz buzz
# 値とし条件が評価されることに注意する
def fizz_buzz(n)
    case 
    when n % 15 == 0
        'Fizz Buzz'
    when n % 3 == 0
        'Fizz'
    when n % 5 == 0
        'Buzz'
    else
        n.to_s
    end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)