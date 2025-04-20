## 初めに

今回は Riverpod の Provider の動作を監視するための DevTool を作成していきます。
そもそも Riverpod の Devtool に関しては以下のような Issue で議論がされています。

https://github.com/rrousselGit/riverpod/issues/798

https://github.com/rrousselGit/riverpod/issues/1033

https://github.com/rrousselGit/riverpod/issues/1039

例えば、[こちら](https://github.com/rrousselGit/riverpod/issues/1033#issue-1091552872)では [provider](https://pub.dev/packages/provider) パッケージの場合と同様に、Riverpod でも「DevTool のタブでそれぞれの Provider の状態を確認できるような実装を行うこと」を目的として議論がされています。

ただ、今回は筆者が DevTool の使い方や開発の仕方を学ぶために独自で実装してみています。

## 記事の対象者

- Flutter 開発者
- DevTool の開発方法を簡単に知りたい方

## 目的

今回は DevTool の開発方法を学ぶことに主眼を置いています。
最終的には、以下の動画のように DevTool で Riverpod の動作を観察できるようにしたいと思います。

https://youtu.be/WkmdCPxoYPk

DevTool の実装に際しては以下の記事を参考にさせていただきました🙇‍♂️

https://zenn.dev/koki0728/articles/6e3114c2d6614b

## 実装の方針

この DevTool の実装は、大きく分けて 2 つの部分から構成されています

1. アプリケーション側（app）の実装
2. DevTool 拡張機能（devtools_ext）の実装

### 1. アプリケーション側の実装

アプリケーション側では、Riverpod の Provider の状態変化を監視し、その情報を DevTool に送信する仕組みを実装します。
主な実装内容は以下の通りです：

#### 1.1 Provider の監視

- `ProviderObserver` を継承した `_AppProviderObserver` クラスを実装
- Provider の追加（`didAddProvider`）、更新（`didUpdateProvider`）、破棄（`didDisposeProvider`）、エラー（`providerDidFail`）の各イベントを監視

#### 1.2 状態管理

- `ProviderInfo` クラス：Provider の情報（型、名前、タイムスタンプ、イベントタイプ）を保持
- `ProviderState` クラス：現在アクティブな Provider のリストと履歴を管理
- `ProviderStateObserver` クラス：Provider の状態変更を管理し、DevTool に送信するデータを準備

#### 1.3 DevTool との連携

- `DevToolsExtContainer` ウィジェット：DevTool との通信を確立
- Service Extension の登録：DevTool からのリクエストを処理するためのインターフェースを提供
  - `fetchProviders`：現在の Provider 情報を取得
  - `subscribeProviderEvents`：Provider イベントの購読を開始
  - `unsubscribeProviderEvents`：Provider イベントの購読を終了

### 2. DevTool 拡張機能の実装

DevTool 拡張機能側では、アプリケーションから送信された Provider の情報を表示し、開発者が Provider の状態を監視できるインターフェースを提供します：

#### 2.1 アプリケーションとの通信

- `AppConnection` クラス：アプリケーションとの通信を管理
- 定期的なポーリングによる Provider 情報の取得
- Provider イベントのリアルタイム購読機能

#### 2.2 UI の実装

- Provider の一覧表示
- Provider の状態変更履歴のタイムライン表示
- 検索機能による Provider のフィルタリング

### 3. データの流れ

1. アプリケーション側で Provider の状態変更が発生
2. `_AppProviderObserver` がイベントを検知
3. `ProviderStateObserver` が状態を更新
4. DevTool 拡張機能が Service Extension を通じて情報を取得
5. DevTool の UI が更新され、開発者に情報を表示

この実装により、開発者は Provider の状態変更をリアルタイムで監視し、アプリケーションの動作をより深く理解することができます。

## app 側の実装

## devtool 側の実装

## まとめ

最後まで読んでいただいてありがとうございました。
誤っている点やもっと良い書き方があればご指摘いただければ幸いです。

### 参考
