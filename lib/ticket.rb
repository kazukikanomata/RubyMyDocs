class Ticket
    attr_reader :fare, :stamp_at
    def initialize(fare)
        @fare = fare
    end

    def stamp(name)
        #TODO: 駅名を渡すと、その駅名がTIcketクラスのインスタンスに保存される
        @stamp_at = name
    end
end
