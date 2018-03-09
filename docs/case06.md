Amazon API Gateway での AWS Lambda の使用 (オンデマンド HTTPS 経由)
---

## 配置
```bash
sam deploy --template-file package.yaml --stack-name etude-for-lambda-case06 --capabilities CAPABILITY_IAM
```

## 運用
```bash
aws cloudformation delete-stack --stack-name etude-for-lambda-case06
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
sam local invoke LambdaFunctionOverHttps -e event_echo.json 
```

## 参照
+ [Amazon API Gateway での AWS Lambda の使用 (オンデマンド HTTPS 経由)](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/with-on-demand-https.html)
