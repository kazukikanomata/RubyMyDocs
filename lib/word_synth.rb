class WordSynth
    def initialize
        @effects = []
    end

    def add_effect(effect)
        @effects << effect
    end

    def play(orginal_words)
        # 実装はlater
        @effects.inject(orginal_words) do | words, effect |
            effect.call(words)
        end
    end
end