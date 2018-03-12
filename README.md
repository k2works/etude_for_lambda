# Etude for Lambda
  
---
# 目的
  
Lambdaアプリケーションのための練習プログラム集
  
# 前提
  
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| node           |6.10.3    |             |
| npm            |3.10.10  |             |
  
  
# 構成
  
1. [構築](#構築 )
1. [配置](#配置 )
1. [運用](#運用 )
1. [開発](#開発 )
  
## 構築
`.env`環境変数ファイルを作成する
```text
AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxx
AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxx
AWS_DEFAULT_REGION=us-east-1
```

```bash
docker-compose up -d
docker-compose exec app bash
```
  
### 01 - Node, package.json
  
#### Node
  
>   Node.jsはJavaScriptランタタイム環境。バックエンドの開発だけでなく、一般的なスクリプティングにも使われている。フロンエンド開発においては、リント、テストそしてファイルのアセンブリングなどのタスクに使われている。
  
#### Node Version Management Tools
  
Nodeのインストールは[Node Version Manager](https://github.com/creationix/nvm )を使用する。
```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
nvm install 6.10.3
nvm use 6.10.3
```
  
#### NPM
  
NPMはNodeのデフォルトパッケージマネージャー。Node一緒に自動的にインストールされる。以下では他のパッケージマネージャーであるYarnを使う。
    
#### package.json
  
> package.jsonはJavaScriptプロジェクトの記述と設定に使われるファイル。一般な情報（プロジェクト名、バージョン、貢献者、ライセンス等）、使用するツールの設定オプションそして実行するタスクが含まれる。
  
package.jsonのセットアップ
````bash
npm init
````
  
#### Two kinds of dependencies
  
+ Dependenciesはアプリケーションで必要なライブラリ (React, Redux, Lodash, jQuery, etc)。`yarn add [package].`でインストールする。
+ Dev Dependenciesは開発中またはアプリケーションのビルド(Webpack, SASS, linters, testing frameworks, etc)。`yarn add --dev [package]`でインストールする。
  
    
### 02 - Babel, ES6, ESLint, Flow, Mocha, and Husky
  
#### Babel
  
> BableはES6のコードをES6のコードに変換するコンパイラ。モジュール性が高く異なる様々な環境で使われている。ReactコミュニティではES5コンパイラとして好まれている。
  
Bableのセットアップ
```bash
npm install --save-dev babel-cli
npm install --save-dev babel-preset-env
```
  
#### ES6
  
> ES6:JavaScript言語の最も重要な進化。
  
#### ESLint
  
> ESLintはES6用のリンター。リンターは一貫性のあるコードフォーマットに関する推奨を通知し、そしてチームで共有する。ESLintが見つけるJavaScriptに関する間違いを学ぶことは優れて方法だ。
  
```bash
npm info eslint-config-airbnb@latest peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev eslint-config-airbnb@latest
npm install --save-dev eslint
npm install --save-dev eslint-plugin-compat
```
  
#### Flow
  
> Flow:Facebookによる静的型チェッカー。コード内の型不一致を検知する。要するに、数値型を使うところで文字型を使うとエラーを通知する。
  
```bash
npm install --save-dev flow-bin babel-preset-flow babel-eslint eslint-plugin-flowtype
```
  
#### Mocha
    
```bash
npm install --save-dev mocha chai co
```
  
#### Git Hooks with Husky
  
> Git Hooks: コミットやプッシュなどの決まったアクションが発生した時に実行されるスクリプト
  
```bash
npm install --save-dev husky
```

### 03 SAM Local
```bash
npm install -g aws-sam-local
```

### 04 - Webpack, Hot Module Replacement
  
#### Webpack
  
> Webpackはモジュールバンドラー。バンドルと呼ばれるクライアントから実行される唯一のJavaScriptファイルを様々なソースファイルから取りまとめて作る。
  
```bash
npm install --save babel-polyfill
npm install --save-dev webpack webpack-dev-server babel-core babel-loader
```
    
#### Hot Module Replacement
  
> Hot Module Replacement(HMR)はページをリロードすることなくモジュールをすぐに更新する強力なWebpackの機能。
  
```bash
npm install --save react-hot-loader@next
```
  

## 配置
+ [独自のサーバーレスアプリケーションを作成する](./docs/case01.md)
+ [SAM ローカルを使用してサーバーレスアプリケーションをローカルでテストする](./docs/case02.md)
+ [AWS Lambda を Amazon S3 に使用する](./docs/case03.md)
+ [Amazon DynamoDB で AWS Lambda を使用する](./docs/case04.md)
+ [さまざまなアカウントから AWS Lambda を Amazon SNS で使用](./docs/case05.md)
+ [Amazon API Gateway での AWS Lambda の使用 (オンデマンド HTTPS 経由)](./docs/case06.md)
+ [SNSからSlackに通知する](./docs/case07.md)
+ [Amazon S3 から E メールを取得する](./docs/case08.md)

## 運用
+ [独自のサーバーレスアプリケーションを作成する](./docs/case01.md)
+ [SAM ローカルを使用してサーバーレスアプリケーションをローカルでテストする](./docs/case02.md)
+ [AWS Lambda を Amazon S3 に使用する](./docs/case03.md)
+ [Amazon DynamoDB で AWS Lambda を使用する](./docs/case04.md)
+ [さまざまなアカウントから AWS Lambda を Amazon SNS で使用](./docs/case05.md)
+ [Amazon API Gateway での AWS Lambda の使用 (オンデマンド HTTPS 経由)](./docs/case06.md)
+ [SNSからSlackに通知する](./docs/case07.md)
+ [Amazon S3 から E メールを取得する](./docs/case08.md)

## 開発
+ [SAM ローカルを使用してサーバーレスアプリケーションをローカルでテストする](./docs/case02.md)
+ [AWS Lambda を Amazon S3 に使用する](./docs/case03.md)
+ [Amazon DynamoDB で AWS Lambda を使用する](./docs/case04.md)
+ [さまざまなアカウントから AWS Lambda を Amazon SNS で使用](./docs/case05.md)
+ [Amazon API Gateway での AWS Lambda の使用 (オンデマンド HTTPS 経由)](./docs/case06.md)
+ [SNSからSlackに通知する](./docs/case07.md)
+ [Amazon S3 から E メールを取得する](./docs/case08.md)

## 参照
