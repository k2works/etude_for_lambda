Amazon S3 から E メールを取得する
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
Lambda 関数を使用してサンプルの関数ペイロードをローカルでテストする。
```bash
sam local invoke SesFunction -e event_ses.json
```

## 参照
+ [Amazon S3 から E メールを取得する](https://docs.aws.amazon.com/ja_jp/ses/latest/DeveloperGuide/receiving-email-action-lambda-example-functions.html)
