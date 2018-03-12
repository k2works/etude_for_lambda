WebpackとTypeScriptを使った開発
---

## 配置
```bash
./dev.sh deploy
```

## 運用
```bash
./dev.sh delete
```

## 開発
```bash
npm install
./dev.sh build
```

Lambda 関数を使用してサンプルの関数ペイロードをローカルでテストする。
```bash
sam local invoke HelloWorldFunction -t infrastructure/sam.yaml -e event.json 
```

Lambda 関数を使用してサンプルの関数ペイロードを実行する。
```bash
./dev.sh invoke helloWorld event.json
```

## 参照
+ [sam-scaffold](https://github.com/Giftbit/sam-scaffold)
+ [SAM Local (Beta)](https://github.com/awslabs/aws-sam-local)
