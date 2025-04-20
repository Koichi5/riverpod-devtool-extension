import 'package:app/extension/providers/provider_state_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviderObserver extends ProviderObserver {
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
