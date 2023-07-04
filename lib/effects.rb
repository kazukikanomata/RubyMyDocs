module Effects
    def self.reverse
        # スペースで分解し、逆順に並び替え、スペースで連結
        ->(words) do
            words.split(' ').map(&:reverse).join(' ')
        end
    end

    def self.echo(rate)
        # スペースならそのまま返却
        # スペース以外ならその文字を指定された回数だけ繰り返す
        ->(words) do
            words.each_char.map { |c| c == ' ' ? c : c * rate }.join
        end
    end

    def self.loud(level)
        # スペースで分割→大文字変換と!の付与→スペースで連結
        # メソッドチェーンは可読性を考慮していく必要があるのか~
        ->(words) do
            words
            .split(' ')
            .map { |word| word.upcase + '!' * level }
            .join(' ')
        end
    end
end