def greet(country = 'japan')
    if country == 'japan'
        'こんにちは!'
    else
        'Hello!'
    end
end

puts greet
puts greet('us')