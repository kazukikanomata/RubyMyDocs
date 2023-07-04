require "rubygems"
require "formatador"

data = [
    {:name => "taro", :age => 30},
    {:name => "hanako", :age => 32}
]
Formatador.display_compact_table(data, [:name, :age])