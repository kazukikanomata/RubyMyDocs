def currency_of(country)
    case country
    when :japan
        'yen'
    when :us
        'dollar'
    when :india
        'rupee'
    else
        raise "無効な国名です"
    end
end

puts currency_of(:japan)
puts currency_of(:jyamaika)