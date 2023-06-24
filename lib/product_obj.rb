class Product
    DEFAULT_PRICE = 0

    attr_reader :name, :price

    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price
    end
end
product_instance = Product.new('A free movie')
puts product_instance.price