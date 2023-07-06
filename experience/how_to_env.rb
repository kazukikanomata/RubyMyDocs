require 'faker'
name = ENV['MY_NAME']

# argvはコマンドライン引数かやっぱりそうね
email = ARGV[0]
age = ARGV[1]

puts "name: #{name}, email: #{email}, age: #{age}"
# export MY_NAME=〇〇で指定
# bashに記述されるのか一時的消えていて笑


puts Faker::Name.name