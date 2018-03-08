Case01 独自のサーバーレスアプリケーションを作成する
---

## 配置
#### S3バケット
```bash
aws s3 mb s3://etude-for-lambda
```

```bash
aws cloudformation package \
   --template-file template.yaml \
   --output-template-file serverless-output.yaml \
   --s3-bucket etude-for-lambda  
```

```bash
aws cloudformation deploy \
   --template-file serverless-output.yaml \
   --stack-name etude-for-lambda-case01 \
   --capabilities CAPABILITY_IAM
```

## 運用
```bash
aws cloudformation delete-stack --stack-name etude-for-lambda-case01
aws lambda list-functions
```

## 開発
サンプルの関数ペイロード (Amazon S3 イベントなど) を生成する。
```bash
sam local generate-event s3 --bucket etude-for-lambda  --key key-name > event_file.json
```
Lambda 関数を使用してサンプルの関数ペイロードをローカルでテストする。
```bash
sam local invoke TestFunction -e event_file.json 
```

## 参照
+ [独自のサーバーレスアプリケーションを作成する](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/serverless-deploy-wt.html)
+ [Serverless Application ModelのCodeUriプロパティとデプロイメントパッケージの関係を理解する](https://dev.classmethod.jp/cloud/aws/understanding-codeuri-property-and-deployment-package-in-serverless-application-model/)
