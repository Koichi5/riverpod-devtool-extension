import 'package:app/devtools_ext.dart';
import 'package:app/providers/provider_state_observer.dart';
import 'package:app/samples/sample_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(observers: [_AppProviderObserver()], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const DevToolsExtContainer(child: SamplePage()),
    );
  }
}

class HookStateInfo {
  final String hookType;
  final Object? value;
  final int hookIndex;
  final String variableName;

  HookStateInfo({
    required this.hookType,
    required this.value,
    required this.hookIndex,
    required this.variableName,
  });
}

class _AppProviderObserver extends ProviderObserver {
  final Set<String> _processedProviders = {};

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    super.didAddProvider(provider, value, container);

    if (provider == providerStateObserverProvider) {
      return;
    }

    final providerKey = '${provider.name}_${provider.runtimeType}';
    if (_processedProviders.contains(providerKey)) {
      return;
    }

    _processedProviders.add(providerKey);
    debugPrint('Provider added: ${provider.runtimeType}');

    Future.microtask(() {
      try {
        if (container.exists(providerStateObserverProvider)) {
          container
              .read(providerStateObserverProvider.notifier)
              .addProvider(provider);
        }
      } catch (e) {
        debugPrint('Error adding provider to observer: $e');
      }
    });
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    if (provider != providerStateObserverProvider) {
      debugPrint('Provider failed: ${provider.runtimeType}');
      Future.microtask(() {
        if (container.exists(providerStateObserverProvider)) {
          container
              .read(providerStateObserverProvider.notifier)
              .disposeProvider(provider);
        }
      });
    }
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider != providerStateObserverProvider) {
      debugPrint('Provider updated: ${provider.runtimeType}');
      Future.microtask(() {
        if (container.exists(providerStateObserverProvider)) {
          container
              .read(providerStateObserverProvider.notifier)
              .updateProvider(provider);
        }
      });
    }
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    debugPrint('Provider disposed: ${provider.runtimeType}');
    if (container.exists(providerStateObserverProvider)) {
      Future.microtask(() {
        if (container.exists(providerStateObserverProvider)) {
          container
              .read(providerStateObserverProvider.notifier)
              .disposeProvider(provider);
        }
      });
    }
  }
}
