class Product
    def title
        log 'title is called'
        'A great movie'
    end

    private
    
    def log(text)
        puts "[LOG] #{text}"
    end
end

class User
    def name
        log 'title is called'
        'Alice'
    end

    private
    
    def log(text)
        puts "[LOG] #{text}"
    end
end

product = Product.new
puts product.title

alice = User.new()
puts alice.name
