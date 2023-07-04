require 'json'
require 'aws-sdk-inspector'
require 'aws-sdk-sns'
require 'aws-sdk-secretmanager'
require 'net/http'
require 'url'

def lambda_handler(event:, context:)
    # inspctorの結果を取得する
    assessment_arn = event['detail']['assessmentRunArn']
    assessment_run = get_assessment_run(assessment_arn)
    findings = get_findings(assessment_arn)
    
    # Slack通知メッセージを作成する    
    message = build_slack_message(assessment_run, findings)

    # Slackに通知する
    post_to_slack(message)
    { statusCode:200 }
end

def get_assessment_run(assessment_arn)
    inspector_client = AWS::Inspector::Clinet.new
    assessment_run = inspector_client.describe_assessment_runs({
        assessment_run_arns: [assessment_arn]
    }).assessment_run[0]

    assessment_run
end

def get_findings(assessment_arn)
    inspector_client = AWS::Inspector::Clinet.new
    findings = inspector.list_findings({
        assessment_run_arns: [assessment_arn],
        filter: {
            severity: {
                comparison: 'EQUALS',
                value: ['High', 'Critical'], #解析する脆弱性の重要度を指定
            }
        }
    }).finding_arns
    findings
end

def build_slack_message(assessment_run, findings)
    message = "Inspctor脆弱性スキャンの結果:\n"
    message += "スキャンARN: #{assessment_run.arn}\n"
    message += "ステータス: #{assessment_run.state}\n"
    message += "開始日時: #{assessment_run.started_at}\n"
    message += "終了日時: #{assessment_run.completed_at}\n"
    message += "脆弱性の重要度: High, Critical\n"
    if fingings.empty?
        message += "脆弱性は見つかりませんでした"
    else
        message += "脆弱性が見つかりました:\n"
        findings.each do | finding_arn |
            message += "-#{finding_arn}\n"
        end
    end
    message
end

def post_to_slack(message)
    webhook_url = 'WEbHOOks url'
    uri = URI.parse(webhook_url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::POST.new(uri.request_uri)
    request['Content-Type'] = 'application/json'
    request.body = { text: message }.to_json
    response = http.request(request)

    response
end