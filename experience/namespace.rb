module Baseball
    class Second
        def initialize(player, uniform_number)
            @player = player
            @uniform_number = uniform_number
        end
    end
end

module Clock
    class Second
        def initialize(digits)
            @digits = digits
        end
    end
end

baseball = Baseball::Second.new('ootani', 17)
clock = Clock::Second.new(12)

# こういうふうに入れ子なしで記述する方法を存在する

# module Baseball
# end

# class Baseball::Second
#     def initialize(player, uniform_number)
#         @player = player
#         @uniform_number = uniform_number
#     end
# end