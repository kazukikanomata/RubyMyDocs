module Greeting
    def say_hello
        # インスタンス名のself.nameにアクセスできる。
        puts "Hello, I am #{self.name}!"
    end
end

class Person
    include Greeting

    attr_accessor :name # 外部からの変更・参照が可能になる
    def initialize(name)
        @name = name # ＠ → インスタンス変数のこと
    end
end

person = Person.new('Alice')
person.say_hello

module MathHelper
    def self.square(x)
        x * x
    end
end

puts MathHelper.square(5)