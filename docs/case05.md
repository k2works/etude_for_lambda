さまざまなアカウントから AWS Lambda を Amazon SNS で使用
---

## 配置
```bash
sam deploy --template-file package.yaml --stack-name etude-for-lambda-case05 --capabilities CAPABILITY_IAM
```

## 運用
```bash
aws cloudformation delete-stack --stack-name etude-for-lambda-case05
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
Lambda 関数を使用してサンプルの関数ペイロードをローカルでテストする。
```bash
sam local invoke LambdaWithSNS -e event_file.json 
```

## 参照
+ [さまざまなアカウントから AWS Lambda を Amazon SNS で使用](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/with-sns.html)
