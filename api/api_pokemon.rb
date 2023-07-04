# 1アクセスするURLをパースする（解析する）
# 2httpの通信を設定する
# 3リクエストを作成する
# 4リクエストを投げる/レスポンスを受け取る
# 5データを変換する(json=>hashなど)
# 6の５つになります。

require 'net/http'
require 'json'

# urlを解析する
# クエリパラメータを回す
url = URI.parse("https://pokeapi.co/api/v2/pokemon/pikachu")


https = Net::HTTP.new(url.host, url.port) # httpの通信を設定する hostやportを指定する
https.use_ssl = true #ssl使います！

req = Net::HTTP::Get.new(url.path) #リクエストを作ります

res = https.request(req) #レスポンスを作ります

hash = JSON.parse(res.body) #データを変換する
puts hash["abilities"][1]["ability"]["name"] #結果を出力