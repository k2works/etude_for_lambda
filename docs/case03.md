AWS Lambda を Amazon S3 に使用する
---

## 配置
```bash
sam package --template-file template.yaml --s3-bucket etude-for-lambda --output-template-file package.yaml
sam deploy --template-file package.yaml --stack-name etude-for-lambda-case03 --capabilities CAPABILITY_IAM
```

## 運用
```bash
aws cloudformation delete-stack --stack-name etude-for-lambda-case03
```

## 開発
バケットを作成しサンプルオブジェクトをアップロードする
```bash
aws s3 cp HappyFace.jpg s3://etude-for-lambda/source/HappyFace.jpg
```

```bash
npm init
npm install --save-dev async gm
```

サンプルの関数ペイロード (Amazon S3 イベントなど) を生成する。
```bash
sam local generate-event s3 --bucket etude-for-lambda  --key key-name > event_file.json
```
Lambda 関数を使用してサンプルの関数ペイロードをローカルでテストする。
```bash
sam local invoke CreateThumbnail -e event_file.json 
```

## 参照
+ [AWS Lambda を Amazon S3 に使用する](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/with-s3.html)
