def slack_message()
    puts "現在のEC2の通知数は"
    puts
    puts "TOTAL: 40件"
    puts "CRITICAL : 13件 HIGH : 27件"
    puts
    puts "以下より修復をお願いします"
    puts
    puts "URL: https://ap-northeast-1.console.aws.amazon.com/inspector/v2/home?region=ap-northeast-1#/findings/repository"
end

slack_message()