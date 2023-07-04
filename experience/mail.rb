require 'date'

# users.each do | user |
#     begin
#         send_mail_to(user)
#     rescue => e
#         puts e.full_message
#     end
# end
# 100人ユーザーに一斉にメールを送る時こうなったらあかんねん。

def convert_reiwa_to_date(reiwa_text)
    m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
    year = m[:jp_year].to_i + 2018
    month = m[:month].to_i
    day = m[:day].to_i
    begin
        # 補足する例外クラスを算出する。→ ここが考えどころか
        Date.new(year,month,day)
    rescue ArgumentError
        nil
    end
end
p convert_reiwa_to_date('令和3年12月31日')
p convert_reiwa_to_date('令和3年99月99日')