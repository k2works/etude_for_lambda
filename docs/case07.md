SNSからSlackに通知する
---

## 配置
```bash
sam deploy --template-file package.yaml --stack-name etude-for-lambda-case07 --capabilities CAPABILITY_IAM
```

## 運用
```bash
aws cloudformation delete-stack --stack-name etude-for-lambda-case07
```

## 開発
```bash
npm init
```
パッケージ作成
```bash
sam package --template-file template.yaml --s3-bucket etude-for-lambda --output-template-file package.yaml
```
サンプルの関数ペイロード (Amazon S3 イベントなど) を生成する。
```bash
sam local generate-event sns > event_file.json
```
`env.json`ファイルを作成してトークンを設定する
```json
{
  "SnsToSlack": {
    "SLACK_WEBHOOK_URL": "/services/xxxxxxxxxxxxxxxxxxx"
  }
}

```
Lambda 関数を使用してサンプルの関数ペイロードをローカルでテストする。
```bash
sam local invoke SnsToSlack -e event_file.json --env-vars env.json
```

## 参照
+ [How To Set Up A Slack Channel To Be An AWS SNS Subscriber](https://medium.com/cohealo-engineering/how-set-up-a-slack-channel-to-be-an-aws-sns-subscriber-63b4d57ad3ea)
