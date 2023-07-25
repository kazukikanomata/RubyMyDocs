# クラスとモジュールの違いを明確に説明できるようにして使っていく
# クラスはオブジェクトを生成する設計図であり、属性と振る舞いを定義
class Dog
    def initialize(name, age)
        # @ってなんだっけ？
        @name = name
        @age = age
    end

    def bark
        puts "Woof woof!"
    end

end

dog1 = Dog.new("ボブ", 3)
dog2 = Dog.new("チャーリー", 5)

# 呼び出し

puts dog1
dog1.bark

puts dog2
dog2.bark