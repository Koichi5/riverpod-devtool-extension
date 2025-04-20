import 'package:app/extension/app_provider_observer.dart';
import 'package:app/extension/devtools_ext.dart';
import 'package:app/samples/sample_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(observers: [AppProviderObserver()], child: const MyApp()),
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
      home: const DevToolsExtContainer(child: SamplePage()),
    );
  }
}
