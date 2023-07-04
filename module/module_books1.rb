module Loggable
    private
    
    def log(text)
        puts "[LOG]#{text}"
    end
end

class Product
    include Loggable
end

product = Product.new
puts product.log 'public?' #privateなので外部から呼び出せない