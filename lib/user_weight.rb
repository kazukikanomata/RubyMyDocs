class User
    attr_reader :name

    DEFAULT_PRICE = 0

    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    protected

    def weight
        @weight
    end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

puts alice.heavier_than?(bob)
puts bob.heavier_than?(alice)
puts User::DEFAULT_PRICE