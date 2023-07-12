### 文字に変数を混ぜる

- ""ダブルクオーテーションかつ#{変数名}で囲む

```
name = 'me'
puts "It's #{name} mario"
```

###  if else
- =の数やendで締めくくることを忘れずに。

```
if country == 'japan'
    puts "#{country} こんにちは"
elsif country == 'us'
    puts 'Hello'
elsif country == 'italy'
    puts 'Ciao'
else 
    puts '??'
end
```

- case 分の場合

```
case country
when 'japan'
    'こんにちは'
when 'us'
    'Hello'
when 'italy'
    'Ciao'
else
    '???'    
end
```

- nilの書き方

```
if !user
    "nilです~"
end
```

- 破壊的メソッド

```
a ='ruby'
a.upcase! # 危険　変数まるごと変えてしまう
a.upcase # まだ代用が効く。
```

- 値を返すものが文

```
a = # 代入できる
if true
    '心です'
else
    '寺田です'
end
```

- requireは
組み込みライブラリでないときには入れる。

- puts print p pp メソッドの違い
p.81でみる

pは出力後の改行しない
putたちは改行する

# ハッシュ






# moduleを理解する