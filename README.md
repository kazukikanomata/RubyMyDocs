# RubyDocs

## 個人的に意外だったやつ
- メソッド名はスネークケースを使っているところで単語の区切りを_にするところ。
- 破壊的なメソッドの代用として非破壊的なメソッドも用意するところ。

## 命名規則
- クラス名とモジュール名
  
キャメルケースを採用とのこと。
_は使用しない。
HTMLやFTPの略語はすべて大文字を使用する。

```
# NG
Foo_Class
barmodule
bazClass
ApiServer

# OK
FooClass
BarModule
BazClass
APIServer

```

## ファイル名とディレクトリ名

- スネークケースを採用。すべて小文字で、単語の区切りを_で繋いでいく。
  
```
class FooClass
end

foo_class.rb
```

ディレクトリの構造は名前空間と対応させる
- hoge_hoge/foo/bar.rb

```
module HogeHoge

    module Foo

        class Bar

        end

    end

end
```

## メソッド名、変数名
- スネークケース：すべてを小文字にし、単語の区切りを_で繋ぐ
- これは意外だったなw

```
# NG

Foomethod
barMethod

# OK

foo_method
bar_method

```

### 定数名
- スクリーミングスネークケース：すべて大文字にし、単語の区切りを_で繋ぐ

```
# NG
Max_Size

# OK
MAX_SIZE
```

### 返り値が真偽値のメソッド
- 真偽を返すメソッドであれば最後に?を付与します。
  
- 冗長になるためメソッドの先頭にisやdoes、またcanなどの助動詞を置かないように

```
# NG
class MotocrossGP

  def is_fast_rider?
    true
  end

end

# OK
class MotocrossGP
  
  def fast_rider?
    true
  end

end

```
  

### 破壊的なメソッド（こわこわなやつ）
- selfや引数を変更するようなメソッドは最後に!を付与します。
- また可能であれば破壊的メソッドに対応する非破壊的なメソッドも用意します。（これも意外）

```
# NG
def update!

end

# OK
def update # 可能であれば非破壊的なメソッドも用意する
end

def update!

end
```




> 引用：https://qiita.com/TakeshiFukushima/items/647a652439b55525945f