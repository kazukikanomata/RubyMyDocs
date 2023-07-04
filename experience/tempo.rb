class Tempo
    include Comparable

    attr_reader :bpm

    def initialize(bpm)
        @bpm = bpm
    end

    def <=> (other)
        other.is_a?(Tempo) ? bpm <=> other.bpm : nil
    end
    
    def inspect
        "#{bpm}bpm"
    end
end

p t_120 = Tempo.new(120)
p t_180 = Tempo.new(180)

p t_120 > t_180
p t_120 <= t_180
p t_120 == t_180