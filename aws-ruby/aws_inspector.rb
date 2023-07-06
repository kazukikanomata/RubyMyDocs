require 'aws-sdk-inspector'
require 'json'
def lambda_handler(event:, context:)
    # AWS Inspectorのクライアントを作成
    inspector_client = Aws::Inspector::Client.new

    # Inspector APIの呼び出し例
    response = inspector_client.describe_findings({
        max_results: 100
    })
    # 応答結果をJSON形式に変換
    findings = response.findings

    json_output = findings.to_json
    # JSONの出力
    {
        statusCode: 200,
        body: json_output
    }
end