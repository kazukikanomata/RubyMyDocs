class Person
    attr_accessor :name, :age #オブジェクトから直接インスタンスの変数の値を参照したり、設定できたりする。
    
    def initialize(name,age)
        @name = name
        @age = age
    end

    def self.bulk_create(data)
        # map では各要素に処理を加えてその値を含んだ新しい配列を作ってくれています。
        data.map { |d| Person.new(d[:name], d[:age]) }
    end

end
# def greeting
#     "Hi! I'm #{@name}"
# end

# def self.person_class_method
#     "クラスメソッドの戻り値ですよ〜"
# end

data = [
    { name: 'metor 一郎', age: 10},
    { name: 'metor 二郎', age: 20},
    { name: 'metor 三郎', age: 30},
    { name: 'metor 四郎', age: 40},
    { name: 'metor 五郎', age: 50},
]

puts Person.bulk_create(data)
puts 
p Person.bulk_create(data)
puts Person.class #Class

# person = Person.new('metor taro')

# puts Person.person_class_method

# puts person.person_class_method #インスタンスからはクラスメソッドは呼び出せない

# puts person.name #getter
# person.name = 'kazukikanomata' #setter
# puts person.name #getter


# puts person.instance_variables #インスタンスが保持している変数の事
# puts person.greeting #クラスから生成されたオブジェクト(インスタンス)からしか呼び出せないメソッド

# p @name #オブジェクトの外部からはインスタンスの値を更新することができない。


