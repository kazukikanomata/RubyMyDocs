class Product
    DEFAULT_PRICE = 0

    attr_reader :name, :price

    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price
    end

    def to_s
        "name: #{name} , price: #{price}"
    end
end

product_instance = Product.new('A free movie', 1000)
puts product_instance.name
puts product_instance.price

class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
       super(name, price)
       @running_time = running_time 
    end
end

dvd = DVD.new('A great movie', 1000, 120)
puts dvd.to_s
puts dvd.name
puts dvd.price
puts dvd.running_time