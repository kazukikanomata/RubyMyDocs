# モジュールはクラスと同様にメソッドのグループを定義するための仕組み
# 直でインスタンス化できない。
# クラス名の衝突を避ける
# クラスにメソッドを追加するために
module Greeting
    def say_hello
        puts "Hello!"
    end
end

class Person
    include Greeting
end

class Animal
    include Greeting
end

person = Person.new
animal = Animal.new

person.say_hello
animal.say_hello