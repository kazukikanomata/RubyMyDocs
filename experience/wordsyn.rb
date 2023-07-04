class WordsSynth
    def initialize
        @effects = []
    end

    def add_effect(effect)
        @effect << effect
    end

    def play(original_words)
        words = original_words
        @effects.each do | effect |
            words = effect.call(words)
        end
        words
    end
end

synth = WordsSynth.new

synth.add_effect(Effects.reverse)
synth.add_effect(Effects.echo(2)) # 文字を連続させる。引数は何回分ってことかな
synth.add_effect(Effects.load(3)) # 全てを大文字にするかつ。各単語の後ろに！をつける。

synth.play('Ruby is fun!')