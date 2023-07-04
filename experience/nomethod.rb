begin
    1 / 0
rescue NoMethodError
    puts "NoMethodErrorです"
rescue NameError
    puts "NameErrorです"
rescue
    puts "その他のエラーです。"
end