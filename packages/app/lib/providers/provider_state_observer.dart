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
