# RuboCop
RuboCopというgemを使うと、自分の書いたコードが標準的なコーディング規約に準拠しているか自動的にチェックしてくれます。

参考：https://qiita.com/tomohiii/items/1a17018b5a48b8284a8b

gemに関する情報は


## 意識すべきこと

- Rubyは（）が省略されることが多いのでちゃんと理解して翔ようになる必要がある。
- リファクタリングは要チェックしておく
- メソッドが結構豊富に存在しているので、楽にできないかなで公式ドキュメントはガリガリ呼んでおいて損なし
- （注意すべき単語） mutableこれ厄介
  
- hashのニュアンス 
```
h[x:foo] 'x'=>'foo' 
```

## 正規表現

これで変なメールアドレスがないかとかみるのか→納得

「半角数字が2個～5個、ハイフンまたはカッコ（開き）、半角数字が1個～4個、ハイフンまたはカッコ（閉じ）、半角数字が4個」
<p>\d{2,5}[-(]\d{1,4}[-)]\d{4}</p>

- \d は「半角数字1文字」を表す
- {n,m} は「直前の文字が n 文字以上、m 文字以下」であることを表す
- {n} は「直前の文字がちょうど n 文字」であることを表す
- [AB] は「AまたはBが1文字」であることを表す
- [a-z] と [-az] ではハイフンの意味が異なる

<br>

## AWS InspectorをSlackに通知する。

### AWS InspectorのAPIを直接使用する方法

- AWS InspectorのAPIを直接呼び出し、脆弱性結果を取得
- 取得した結果を解析し、Slackに通知するためのカスタムスクリプトを作成

Step
1. AWS Inspctor APIのクレデンシャルを取得する
2. カスタムスクリプトを作成する
3. Slackに通知するための設定
4. 定期的な実行を設定する

## TODO　→ あとでissueに起こす。

- Rubyの文法的復習
   - Cons: これ実装で絶対使うよな。デバックで使いたいことをまとめる
   - How:　revengeファイルを作った実装に必要なことを復習していこう

- AWS for Rubyをinstallして使ってみる。
   - Cons: 基本的な設定を理解する
   - Cons→Concent: Inspector APIの呼び出しやSlackへの通知に関連するメソッドの使い方を学ぶ
   - How: AWS-sdkを参照　https://docs.aws.amazon.com/sdk-for-ruby/

- Slackへの通知をする

   - Cons: SlackのWebhookを利用し、メッセージを送信する方法を学びます。Slack Webhookのドキュメントを参照して、メッセージのフォーマットや送信方法を把握
   - How: https://api.slack.com/messaging/webhooks

- Lambda関数の作成とdeploy

   - Cons: トリガーの設定・デプロイの流れを意識する。
   - How: https://docs.aws.amazon.com/lambda/index.html

- CloudWatch Eventsを使用し、イベントルールを作成やスケジュール設定について理解する。

   - Cons: 実装にあたって、週一回Lambda叩けるような設定とかできそうかな
   - How: 

-  権限周りの設定 IAM
   - Cons: アクセス権限の割り当てを考える。
   - How:


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

```
hash = {ruby:"rails",python:"Django",php:"cakePHP"}
hash[:java] = "Spring" // add value
hash.delete(:ruby) // delete value

```

参考：ハッシュの便利メソッド
URL https://qiita.com/jnchito/items/02ba8aad634a6bd8a2f6







# インデントを理解


# クラスとモジュールの使い分けの仕方を知る。

クラスはオブジェクトになることができる。インスタンス化できる
- インスタンスメソッドやクラスメソッドを格納できる。

モジュールはインスタンス化能力は持たないが、メソッドを格納できる。






定数は、モジュール経由して呼び出すことができる。

```
module Mod
    Version = "2.3.0"
end

# 呼び出し
Mod::Verison 
```

URL: https://pikawaka.com/ruby/class

