module Taggable
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    extend Loggable
    
    def self.create_products(names)

        log 'create_products is called'
    end
end

Product.create_products([])

Product.log('Hello.')