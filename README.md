## 概要
Riverpod の Provider の生成、変更、破棄を監視することを目的とした DevTool を作成したプロジェクトです。

## 解決したい課題
Riverpod を用いたアプリケーションで、使用されている Provider の生成、変更、破棄を監視し、DevTool で確認したい

## 前提
- `app` ディレクトリ
    - DevTool の実行対象となる Flutter アプリケーションが含まれるディレクトリ
    - すでに既存の Flutter アプリがある場合はそのルートディレクトリ
- `devtools_ext` ディレクトリ
    - DevTool の内容が含まれるディレクトリ

## 既存のアプリケーションに組み込む場合の手順（app側）
1. `packages/app/extension`ディレクトリの追加
`packages/app/extension` ディレクトリの内容を既存アプリに追加

2. `packages/app/devtools_options.yaml` の追加
`packages/app/devtools_options.yaml` の内容を既存アプリに追加

3. `packages/app/lib/extension` ディレクトリの追加
`packages/app/lib/extension` ディレクトリの内容を既存アプリに追加

4. build runner の実行、パスの調整
import のパスを調整し、以下のコマンドでコード生成
```
flutter pub run build_runner build --delete-conflicting-outputs
```

5. `main.dart` の修正
`main.dart` を以下の点を修正
```dart
void main() {
  runApp(
    ProviderScope(
      observers: [AppProviderObserver()],  // AppProviderObserverを追加
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod DevTool',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const DevToolsExtContainer(  // home の Widget を DevToolsExtContainer でラップ
        child: SamplePage(),
      ),
    );
  }
}
```

## 既存のアプリケーションに組み込む場合の手順（devtools_ext側）
1. DevTool の内容を実装する `devtools_ext` を作成
以下のコマンドをルートディレクトリで実行して、WebプラットフォームでDevToolのプロジェクトを作成
```
flutter create --template app --platforms web devtools_ext
```

2. `packages/devtools_ext/lib` ディレクトリの追加
1で作成した `devtools_ext` ディレクトリに `packages/devtools_ext/lib` ディレクトリの内容を追加

3. ビルドコマンド実行
以下のコマンドを実行して、DevToolをビルド
なお、 `--dest` で指定するパスは app 側の  `extension/devtools` ディレクトリに設定
問題なく実行できた場合は `packages/app/extension/devtools/` ディレクトリに `build` ディレクトリが追加される
```
dart run devtools_extensions build_and_copy --source=. --dest=../app/extension/devtools
```

4. app ディレクトリの既存アプリを実行して、DevTools の「Open in browser」を押して Web の DevTool を開くと「riverpod_monitor」のタブが追加されている状態
