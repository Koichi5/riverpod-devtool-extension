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

DevTool の実装に際しては以下の記事を参考にさせていただきました 🙇‍♂️

https://zenn.dev/koki0728/articles/6e3114c2d6614b

## 全体の把握
実装に取り掛かる前に以下の図でこの DevTool の全容をざっと把握しておきたいと思います。
![](https://storage.googleapis.com/zenn-user-upload/ddd4261eab52-20250420.png)

上記の図では以下のようなデータの流れになっています。
1. DevTool 側から Provider のデータ要求
2. App 側の ProviderObserver で各 Provider の監視
3. Provider の監視結果を DevTool 側へ渡す
4. DevTool 側で監視結果を表示
5. 1 ~ 4 を繰り返し

## 実装の方針
今回の DevTool の実装は、大きく分けて 2 つの部分から構成されています。
1. アプリケーション側（以下 app）の実装
2. DevTool 拡張機能（以下 devtool）の実装

今回はまず app 側の実装を行い、次に devtool 側の実装を行います。

## app 側の実装
まずは app の実装を行います。
app の実装は以下の手順で進めていきます。
1. `app` のプロジェクト作成
2. `config.yaml` ファイル作成
3. `devtools_options.yaml` の作成
4. `models` の作成
5. `providers` の作成
6. `DevToolsExtContainer` の作成
7. サンプルの作成

### 1. `app` のプロジェクト作成
まずは `app` プロジェクトを作成します。
既存のプロジェクトに DevTool を追加する場合はこのステップは不要です。

今回は `riverpod_devtools_extension` というルートディレクトリの中に `packages` というディレクトリを作成し、その中に `app` プロジェクトを作成しています。
ディレクトリ構造は以下のようになっています。
```md
riverpod_devtools_extension/
└── packages/
    └── app/            # アプリケーション本体
        └── lib/
            └── main.dart
```

### 2. `config.yaml` ファイル作成
次に app の中に `config.yaml` ファイルを作成していきます。
`config.yaml` ファイルでは DevTool を app 側で認識して実行できるようにするための設定を行います。

`packages/app/extension/devtools` ディレクトリに `config.yaml` ファイルを作成します。
コードは以下の通りです。
```yaml: packages/app/extension/devtools/config.yaml
name: riverpod_monitor
issueTracker: 'https://github.com/Koichi5/riverpod-devtool-extension/issues'
version: 0.0.1
materialIconCodePoint: '0xe3fb'
requiresConnection: true
```

それぞれのパラメータは以下のような指定ができます。
- `name` : DevTool の名前。タブで表示される名前
- `issueTracker` : DevTool 右上の「Report an issue」で開くURL
- `version`: DevTool のバージョン
- `materialIconCodePoint` : DevTool のタブで表示されるアイコン
- `requiresConnection` : Flutter アプリとの連絡が必要かどうか

`name` に関しては、自分の手元では UpperCamelCase で指定することができませんでした。
`materialIconCodePoint` に関しては、Flutter のレポジトリの [material/icons.dart](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/icons.dart) から選択します
`requiresConnection` は、今回はアプリ側の Riverpod の状態を取得したいので、 `true` にします。

現在のディレクトリ構造は以下のようになっています。
```
riverpod_devtools_extension/
└── packages/
    └── app/                        # アプリケーション本体
        ├── lib/
        │   └── main.dart
        └── extension/
            └── devtools/
                 └── config.yaml    # New
```

これで `config.yaml` の作成は完了です。

### 3. `devtools_options.yaml` の作成
次に `app` ディレクトリのルートに `devtools_options.yaml` の作成を行います。
`devtools_options.yaml` を設定しなければ、以下の画像のように DevTool の読み込みができなくなるため、設定が必要です。
![](https://storage.googleapis.com/zenn-user-upload/6dc26257e18f-20250420.png)

コードは以下の通りです。
```yaml: packages/app/devtools_options.yaml
description: This file stores settings for Dart & Flutter DevTools.
documentation: https://docs.flutter.dev/tools/devtools/extensions#configure-extension-enablement-states
extensions:
  - riverpod_monitor: true
```

`extensions` に DevTool の名前を指定して、 `true` を渡すことでツールを有効化することができます。
:::message
この `extensions` パラメータで指定する DevTool の名前は先ほど追加した `config.yaml` の `name` パラメータと一致している必要があります。
:::

ディレクトリ構造は以下のようになっています。
```
riverpod_devtools_extension/
└── packages/
    └── app/                        # アプリケーション本体
        ├── lib/
        │   └── main.dart
        ├── extension/
        │   └── devtools/
        │        └── config.yaml
        └── devtools_options.yaml   # New
```

### 4. `models` の作成
次に、 app 側で必要な `model` の定義をしていきます。
`models` では以下の3つを定義していきます。
- `EventType` : Provider のイベントの種類（追加、変更、破棄）
- `ProviderInfo` : Provider の情報（名前、タイプ等）
- `ProviderState` : Provider の状態をまとめたもの

コードはそれぞれ以下の通りです。
なお、今回の実装では freezed を用いてクラスの実装をしているため、 build runner を実行する必要があります。
```dart: packages/app/lib/models/event_type.dart
enum EventType {
  added,
  updated,
  disposed,
}
```

```dart: packages/app/lib/models/provider_info.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_info.freezed.dart';
part 'provider_info.g.dart';

@freezed
class ProviderInfo with _$ProviderInfo {
  const factory ProviderInfo({
    required String type,
    String? name,
    required DateTime timestamp,
    required String eventType,
  }) = _ProviderInfo;

  factory ProviderInfo.fromJson(Map<String, dynamic> json) =>
      _$ProviderInfoFromJson(json);
}
```

```dart: packages/app/lib/models/provider_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app/models/provider_info.dart';

part 'provider_state.freezed.dart';
part 'provider_state.g.dart';

@freezed
class ProviderState with _$ProviderState {
  const factory ProviderState({
    @Default([]) List<ProviderInfo> providers,
    @Default([]) List<ProviderInfo> history,
  }) = _ProviderState;

  factory ProviderState.fromJson(Map<String, dynamic> json) =>
      _$ProviderStateFromJson(json);
}
```

今回定義した `ProviderInfo` のプロパティ以外でも取得できる Provider のデータはあるかと思うので、必要に応じて追加していただければと思います。

ディレクトリ構造は以下のようになっています。
```
riverpod_devtools_extension/
└── packages/
    └── app/                             # アプリケーション本体
        ├── lib/
        │   ├── models/
        │   │   ├── event_type.dart      # New
        │   │   ├── provider_info.dart   # New
        │   │   └── provider_state.dart  # New
        │   └── main.dart
        ├── extension/
        │   └── devtools/
        │        └── config.yaml
        └── devtools_options.yaml
```

### 5. `providers` の作成
次に `providers` の作成を行います。
今回は、app 側のそれぞれの Provider の変化を監視、保持するための Provider を作成します。（ややこしいですが...）

コードは以下の通りです。
```dart: packages/app/lib/providers/provider_state_observer.dart
import 'package:app/models/event_type.dart';
import 'package:app/models/provider_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/provider_info.dart';

part 'provider_state_observer.g.dart';

@Riverpod(keepAlive: true)
class ProviderStateObserver extends _$ProviderStateObserver {
  @override
  ProviderState build() {
    return const ProviderState(providers: [], history: []);
  }

  void addProvider(ProviderBase<Object?> provider) {
    final existingProviderIndex = state.providers.indexWhere(
      (info) =>
          info.name == provider.name &&
          info.type == provider.runtimeType.toString(),
    );

    final info = ProviderInfo(
      type: provider.runtimeType.toString(),
      name: provider.name,
      timestamp: DateTime.now(),
      eventType: EventType.added.name,
    );

    final updatedHistory = [...state.history, info];

    if (existingProviderIndex == -1) {
      state = state.copyWith(
        providers: [...state.providers, info],
        history: updatedHistory,
      );
    } else {
      state = state.copyWith(history: updatedHistory);
    }
  }

  void updateProvider(ProviderBase<Object?> provider) {
    final info = ProviderInfo(
      type: provider.runtimeType.toString(),
      name: provider.name,
      timestamp: DateTime.now(),
      eventType: EventType.updated.name,
    );

    final updatedProviders =
        state.providers
            .where(
              (info) =>
                  info.name != provider.name ||
                  info.type != provider.runtimeType.toString(),
            )
            .toList();

    updatedProviders.add(info);

    state = state.copyWith(
      providers: updatedProviders,
      history: [...state.history, info],
    );
  }

  void disposeProvider(ProviderBase<Object?> provider) {
    final info = ProviderInfo(
      type: provider.runtimeType.toString(),
      name: provider.name,
      timestamp: DateTime.now(),
      eventType: EventType.disposed.name,
    );

    state = state.copyWith(
      providers: state.providers
          .where((info) => info.name != provider.name)
          .toList(),
      history: [...state.history, info],
    );
  }
}
```

それぞれ詳しくみていきます。

以下の部分では、`keepAlive: true` にすることで autoDispose されないようにします。
また、`build` メソッドで `ProviderState` を保持するようにしています。これで、`state` を更新することで `ProviderState` が更新され、それぞれの Provider の状態を保持することができます。
```dart
@Riverpod(keepAlive: true)
class ProviderStateObserver extends _$ProviderStateObserver {
  @override
  ProviderState build() {
    return const ProviderState(providers: [], history: []);
  }
```

以下では、Provider が追加された場合の処理を実装しています。
複数回実行される可能性があるため、`existingProviderIndex` ですでに追加されているProvider かどうかを判定して、追加されていない場合のみ `providers` と `history` を更新するようにしています。
```dart
void addProvider(ProviderBase<Object?> provider) {
  final existingProviderIndex = state.providers.indexWhere(
    (info) =>
        info.name == provider.name &&
        info.type == provider.runtimeType.toString(),
  );

  final info = ProviderInfo(
    type: provider.runtimeType.toString(),
    name: provider.name,
    timestamp: DateTime.now(),
    eventType: EventType.added.name,
  );

  final updatedHistory = [...state.history, info];

  if (existingProviderIndex == -1) {
    state = state.copyWith(
      providers: [...state.providers, info],
      history: updatedHistory,
    );
  } else {
    state = state.copyWith(history: updatedHistory);
  }
}
```

上記の `addProvider` と同様で、 `updateProvider` は　Provider が更新された時、 `disposeProvider` は Provider が破棄された時の処理を記述しています。

これで `ProviderStateObserver` の `state` では以下の二つの状態を持つことができるようになります。
- 現時点で有効な Provider
- それぞれの Provider の追加、変更、破棄の履歴

### 6. `DevToolsExtContainer` の作成

### 7. サンプルの作成


## devtool 側の実装

## まとめ

最後まで読んでいただいてありがとうございました。
誤っている点やもっと良い書き方があればご指摘いただければ幸いです。

### 参考
