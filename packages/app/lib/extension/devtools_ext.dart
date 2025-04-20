import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:async';

import 'package:app/extension/providers/provider_state_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DevToolsExtKey {
  static const fetchProviders = 'ext.fetchProviders';
  static const fetchProviderHistory = 'ext.fetchProviderHistory';
  static const subscribeProviderEvents = 'ext.subscribeProviderEvents';
  static const unsubscribeProviderEvents = 'ext.unsubscribeProviderEvents';
}

class DevToolsExtContainer extends ConsumerStatefulWidget {
  const DevToolsExtContainer({required this.child, super.key});

  final Widget child;

  @override
  ConsumerState<DevToolsExtContainer> createState() =>
      _DevToolsExtContainerState();
}

class _DevToolsExtContainerState extends ConsumerState<DevToolsExtContainer> {
  bool _isSubscribed = false;
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _registerExtensions();
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _registerExtensions() {
    if ((!kIsWeb && Platform.environment.containsKey('FLUTTER_TEST')) ||
        kReleaseMode) {
      return;
    }

    registerExtension(DevToolsExtKey.fetchProviders, (_, __) async {
      try {
        final state = ref.read(providerStateObserverProvider);

        final providers =
            state.providers
                .where((info) => info.name != null && info.name!.isNotEmpty)
                .map(
                  (info) => {
                    'type': info.type.toString(),
                    'name': info.name ?? 'Unnamed Provider',
                    'timestamp': info.timestamp.toIso8601String(),
                    'eventType': info.eventType,
                  },
                )
                .toList();

        final sortedHistory = [...state.history];
        sortedHistory.sort((a, b) => b.timestamp.compareTo(a.timestamp));

        final history =
            sortedHistory
                .map(
                  (info) => {
                    'type': info.type.toString(),
                    'name': info.name ?? 'Unnamed Provider',
                    'timestamp': info.timestamp.toIso8601String(),
                    'eventType': info.eventType,
                  },
                )
                .take(100)
                .toList();

        final response = {
          DevToolsExtKey.fetchProviders: providers,
          DevToolsExtKey.fetchProviderHistory: history,
        };

        debugPrint('Sending provider data: $response');
        return ServiceExtensionResponse.result(jsonEncode(response));
      } catch (e, stackTrace) {
        debugPrint('Error in fetchProviders: $e');
        debugPrint('Stack trace: $stackTrace');
        return ServiceExtensionResponse.error(
          500,
          'Failed to fetch providers: $e',
        );
      }
    });

    registerExtension(DevToolsExtKey.subscribeProviderEvents, (_, __) async {
      if (!_isSubscribed) {
        _isSubscribed = true;
        ref.listen(providerStateObserverProvider, (_, state) {
          if (state.history.isNotEmpty) {
            _debounceTimer?.cancel();
            _debounceTimer = Timer(const Duration(milliseconds: 100), () {
              final lastEvent = state.history.last;
              final eventData = {
                'type': lastEvent.type.toString(),
                'name': lastEvent.name ?? 'Unnamed Provider',
                'timestamp': lastEvent.timestamp.toIso8601String(),
                'eventType': lastEvent.eventType,
              };
              debugPrint('Posting provider event: $eventData');
              postEvent('provider.event', eventData);
            });
          }
        });
      }
      return ServiceExtensionResponse.result(jsonEncode({'success': true}));
    });

    registerExtension(DevToolsExtKey.unsubscribeProviderEvents, (_, __) async {
      _isSubscribed = false;
      _debounceTimer?.cancel();
      return ServiceExtensionResponse.result(jsonEncode({'success': true}));
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
