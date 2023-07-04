require 'net/http'
require 'uri'
require 'json'
require 'logger'

logger = Logger.new('./webapi.log')
# クエリパラメータ
# URI.encode_www_formを使って「application/x-www-form-urlencoded」形式の文字列に変換
params = URI.encode_www_form({ param1: 'foo', param2: 'bar baz', param3: 'あ'})

uri = URI.parse("http://mogulla3.com:4567?#{params}")

begin
    response = Net::HTTP.start(uri.host, uri.port) do |http|
        http.open_timeout = 5
        http.read_timeout = 10
        http.get(uri.request_uri)
    end

    case response

    when Net::HTTPSuccess
        p JSON.parse(response.body)
    when Net::HTTPRedirection
        logger.warn("Redirection: code=#{response.code} message=#{response.message}")
    else
        logger.error("HTTP ERROR: code=#{response.code} message=#{response.message}")
    end

rescue IOError => e
    logger.error(e.message)
rescue TimeoutError => e
    logger.error(e.message)
rescue JSON::ParserError => e
    logger.error(e.message)
rescue => e
    logger.error(e.message)
end