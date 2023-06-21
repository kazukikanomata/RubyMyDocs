# 公式リファレンス：https://docs.ruby-lang.org/ja/3.1/doc/index.html
# {}.class 空のハッシュを作る。

# {
    # 要素の追加
    currencies = { 'japan' => 'yen', 'us' => 'dollar' , 'india' => 'rupee'}
    puts currencies
    
    # イタリアの通貨
    currencies['italy'] = 'euro'
    
    puts currencies

    # 繰り返し処理
    currencies.each do | key, value |
        puts "#{key} : #{value}"
    end

    # サイズ
    {}.size

    # 削除
    currencies.delete('japan')

    # キーがないならnil
    currencies.delete('japan') #nil
# }

# {
    # シンボルと文字列の違い
    # シンボルはイミュータブルなので破壊的変更は受け付けない。文字列は破壊的な変更をしてしまう
    # シンボルは文字列より高速

    # puts :apple.obejet_id 1143
    # puts :apple.obejet_id 1143
    # puts :apple.obejet_id 1143
    # puts 'apple'.obejet_id  1134
    # puts 'apple'.obejet_id  1115
    # puts 'apple'.obejet_id  1194

    # これでもかける
    # currencies = {':japan' => 'yen', ':us' => 'dollar' , ':india' => 'rupee'}

    # puts currencies[':japan']

    # 可読性が上がる

    # status = 2

    # case status
    # when 0
    #     puts 'これからやります'
    # when 1
    #     puts '今やってます'
    # when 2
    #     puts 'もう終わりました'
    # end

    # 確かにいいね

    # status = :done

    # case status
    # when :todo
    #     puts 'これからやります'
    # when :doing
    #     puts '今やってます'
    # when :done
    #     puts 'もう終わりました'
    # end

    # ハッシュで追加する
    currencies[:italy] = 'euro'

    # =>を使わないで これで記述できるのがいいよね。
    currencies = { japan: 'yen' , us: 'dollar' , india: 'rupee'}




# }

