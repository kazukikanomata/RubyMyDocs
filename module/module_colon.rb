module Sample
    class User
        NAME = 'Alice'

        def self.hello(name = NAME)
            "Hello, I am #{name}"
        end
    end
end

# メソッド呼び出しはドット
# 2重コロンはメソッドもモジュールにも使える

puts Sample::User::NAME
puts Sample::User.hello
puts Sample::User::hello