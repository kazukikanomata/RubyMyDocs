# r = /\d{3}-\d{4}
# puts r.class # 正規表現のクラス

# /この中に正規ひょうげんを記述していく/ 

if '1234-4567' =~ /\d{3}-\d{4}/
    puts 'マッチしました'
else
    puts 'マッチしませんでした'
end

text ='私の誕生日は1998年6月1日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
puts m[:year]
puts m[:month]
puts m[:day]

text1 ='私の誕生日は1998年-6月-1日です。'
puts text1.split(/-/)
