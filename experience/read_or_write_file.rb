require 'csv'
require 'json'
require 'yaml'

# ちゃんとパスを指定しないといけないね。フォルダで

# ファイルある？
result = File.exist?('./experience/object.rb')
puts result

# フォルダある？
result1 = Dir.exist?('./experience')
puts result1

# 読み・書き
File.open('./experience/sample.rb', 'r') do |f|
    puts f.readlines.count
end

# 書き→ これだと、上書きで前のものが消滅してしまう。
# File.open('./experience/sample.rb' , 'w') do |f|
#     f.puts 'Hello World'
# end

# 最後の行で読み書きをするためには、'a'を指定する
File.open('./experience/sample.rb' , 'a') do |f|
    f.puts "puts 'Hello World'"
end

# ファイルをわざわざ作らなくても自動で作ってくれるのはえぐい
CSV.open('./experience/sample.csv', 'w') do | csv |
    # 出力
    csv << ['Name', 'Email' , 'Age']
    csv << ['kazuki', 'kazu.eva.sinji.001@gmail.com', 25]
end

# JSON

user = { name: 'kazuki', email: 'kazu.eva.sinji.001@gmail.com', age: 25}

#ハッシュをJson形式にする
user_json = user.to_json
puts user_json
JSON.parse(user_json, symblolize_names: true)
puts user_json

yaml = <<TEXT
alice:
    name: 'alice'
    email: 'alice@.com'
    age: 20
TEXT

# yamlテキストを変換してパースしてハッシュに変換する
users1 = YAML.load(yaml)

users1['alice']['gender'] = :female

puts YAML.dump(users1)