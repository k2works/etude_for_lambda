SAM ローカルを使用してサーバーレスアプリケーションをローカルでテストする
---

## 配置
```bash
sam package --template-file template.yaml --s3-bucket etude-for-lambda --output-template-file package.yaml
sam deploy --template-file package.yaml --stack-name etude-for-lambda-case02 --capabilities CAPABILITY_IAM
```

## 運用
```bash
aws cloudformation delete-stack --stack-name etude-for-lambda-case02
```

## 開発
start-api コマンドを呼び出して API オペレーションのローカルコピーを起動
```bash
sam local start-api
```
ローカルなログ記録
```bash
sam local invoke --log-file ./output.log
```
環境変数ファイルの使用
```bash
sam local start-api --env-vars env.json
```

## 参照
+ [SAM ローカルを使用してサーバーレスアプリケーションをローカルでテストする](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/test-sam-local.html)
+ [AWS SAMをローカル環境で実行できるSAM Localがベータリリース](https://dev.classmethod.jp/cloud/aws/20170816-sam-local/)
