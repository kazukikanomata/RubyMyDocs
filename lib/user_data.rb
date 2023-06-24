# Userクラスを定義する
#　クラス名はキャメルケースで記述していく
class User
    attr_reader :first_name, :last_name, :age
    def initialize(first_name, last_name, age) # コンストラクタのようなもの
        @first_name = first_name #@はインスタンス変数らしい。同じインスタンス内部で使われる変数みたい
        @last_name = last_name
        @age = age    
    end
end

#ユーザーのデータを作成する

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# 氏名を作成するメソッド
def full_name(user)
    "#{user.first_name} #{user.last_name}"
end

# ユーザーのデータを表示する
users.each do |user|
    puts "氏名：#{full_name(user)}、年齢：#{user.age}"
end


# user = User.new => クラスからオブジェクトを生成する