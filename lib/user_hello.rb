class User
    # @nameを読み書きするメソッドが自動的に定義される.
    # 12~20行目の記述が不要
    # attr_accessor :name
    
    # Read onlyなら
    # attr_reader :name
    def initialize(name)
        @name = name
    end

    def hello
        "Hello, I'm #{@name}"
    end

    #　nameを外部から参照するメソッド
    # def name
    #     @name
    # end

    # @nameを外部から変更するメソッド
    # def name=(value)
    #     @name = value
    # end

    def self.create_users(names)
        names.map do | name |
            User.new(name)
        end
    end

end
# インスタンス変数名.の変数名とかで参照できる。
# メソッドは.helloとかで記述していく。
# 配列に格納
names = ['alice' ,'bob' , 'tanaka']

#　メソッドを呼び出す　→ names分回す
users = User.create_users(names)

# users分回す
users.each do |user|
    puts user.hello
end

# インスタンス変数はインスタンスごとに保持している情報を記述することができる
# クラス変数は、インスタンスに依存せずクラス本体ひ紐付けることができる。
# 参考 https://pikawaka.com/ruby/class