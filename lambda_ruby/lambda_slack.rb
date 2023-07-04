require 'aws-sdk-lambda'
require 'slack-ruby-client'

def lambda_handler(event:, context:)
    message = "Lambda関数からの通知です!"
    send_slack_notification(message)
    {
        statusCode: 200,
        body: 'Notification send successfully end'
    }

    def send_slack_notification(message)
        slack_token = 'TOKEN をかく'

        Slack.configure do | config |
            config.token = slack_token
        end

        client = Slack::Web::Client.new

        # messageを送るメソッド
        client.chat_postMessage(channel: '#general' , text: message)
    end
end