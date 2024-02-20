require 'json'


# こいつに移したい！
hash1 = {}

# JSON文字列をハッシュへ変換
json_str = '{"id": 1, "first_name": "Taro", "last_name": "Suzuki", "age": 25}'
hash1 = JSON.parse(json_str)
puts hash1


# JSON文字列をハッシュへ変換
JSON.parse('{"id": 1, "first_name": "Taro", "last_name": "Suzuki", "age": 25}')
# => {"id"=>1, "first_name"=>"Taro", "last_name"=>"Suzuki", "age"=>25}

# ハッシュをJSON文字列に変換
JSON.generate({"id"=>1, "first_name"=>"Taro", "last_name"=>"Suzuki", "age"=>25})
# => "{\"id\":1,\"first_name\":\"Taro\",\"last_name\":\"Suzuki\",\"age\":25}"