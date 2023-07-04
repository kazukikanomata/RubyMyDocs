module Rainbowable
    def rainbow
        # after excute
        colored_chars = []
        str = self. # 自分自身の文字列表現を取得する

        to_s.each_char.map.with_index do | char, count |
            color = 31 + count % 6
            "\e[#{color}m#{char}"
        end.join+ "\e[0m"
    end
end