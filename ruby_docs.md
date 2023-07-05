# Ruby

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
   -   
2. カスタムスクリプトを作成する
3. Slackに通知するための設定
4. 定期的な実行を設定する

## TODO　→ あとでissueに起こす。

- Rubyの文法的復習
Cons: これ実装で絶対使うよな。デバックで使いたいをまとめる。
How:　revengeファイルを作った実装に必要なことを復習していこう

- AWS for Rubyをinstallして使ってみる。
Cons: 基本的な設定を理解する
Cons→Concent: Inspector APIの呼び出しやSlackへの通知に関連するメソッドの使い方を学ぶ
How: AWS-sdkを参照　https://docs.aws.amazon.com/sdk-for-ruby/

- Slackへの通知をする

Cons: SlackのWebhookを利用し、メッセージを送信する方法を学びます。Slack Webhookのドキュメントを参照して、メッセージのフォーマットや送信方法を把握
How:公式 https://api.slack.com/messaging/webhooks

- Lambda関数の作成とdeploy

Cons: トリガーの設定・デプロイの流れを意識する。
How: https://docs.aws.amazon.com/lambda/index.html

- CloudWatch Eventsを使用し、イベントルールを作成やスケジュール設定について理解する。

Cons: 実装にあたって、週一回Lambda叩けるような設定とかできそうかな
How: 

-  権限周りの設定 IAM
Cons: アクセス権限の割り当てを考える。
How: