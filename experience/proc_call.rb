add_proc = Proc.new { | a, b | a + b }

# 全て呼び出し方は同じ。
p add_proc.call(10,20)
p add_proc.yield(10,20)
p add_proc.(10,20)
p add_proc[10,20]
p add_proc === [10, 20]


# Procオブジェクトと相性がいいね。条件式が長くならなくてまとまってる。
def judge(age)
    adult = Proc.new{ |n| n > 20 }
    child = Proc.new{ |n| n < 20 }

    case age
    when adult
        '大人です'
    when child
        '子供です'
    else
        '二十歳です'
    end
end

p judge(25)
p judge(20)
