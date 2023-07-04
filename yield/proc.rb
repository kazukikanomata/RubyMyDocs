hello_proc = Proc.new { 'hello' }
# 実行するなら call
p hello_proc.call

add_proc = Proc.new { | a = 0 , b = 0| a + b}
p add_proc.call(10,20)

# JSで言うところのこれ
# const addProc = (a,b) => a + b
# addProc(10,20)

def greet(&block)
    # puts block.class Procクラスなんか
    puts 'おはよう'
    text = block.call('こんにちは')
    puts text
    puts 'こんばんは'
end

greet do | text |
    text * 2
end

# レボリューション　ブロックの代わりにとしてgreetメソッドに渡している
repeat_proc = Proc.new { | text | text * 2 }
greet(&repeat_proc)

def greet(proc_1, proc_2, proc_3)
    puts proc_1.call('おはよう')
    puts proc_2.call('こんにちは')
    puts proc_3.call('こんばんは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text* 2 }
question_proc = Proc.new { |text| "#{text}?" }

p greet(shuffle_proc, repeat_proc, question_proc)
