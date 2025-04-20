import 'dart:async';
import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';

class DevToolsExtKey {
  static const fetchProviders = 'ext.fetchProviders';
  static const fetchProviderHistory = 'ext.fetchProviderHistory';
  static const subscribeProviderEvents = 'ext.subscribeProviderEvents';
  static const unsubscribeProviderEvents = 'ext.unsubscribeProviderEvents';
}

class AppConnection {
  static Timer? _pollingTimer;
  static bool _isSubscribed = false;

  static Future<Map<String, dynamic>?> fetchProviders() async {
    try {
      final result = await serviceManager.callServiceExtensionOnMainIsolate(
        DevToolsExtKey.fetchProviders,
      );

      if (result.json == null) {
        debugPrint('Received null response from service extension');
        return null;
      }

      final providers =
          result.json?[DevToolsExtKey.fetchProviders] as List<dynamic>?;
      final history =
          result.json?[DevToolsExtKey.fetchProviderHistory] as List<dynamic>?;

      if (providers == null || history == null) {
        debugPrint('Invalid response structure: ${result.json}');
        return null;
      }

      return {
        DevToolsExtKey.fetchProviders: providers,
        DevToolsExtKey.fetchProviderHistory: history,
      };
    } catch (e, stackTrace) {
      debugPrint('Error fetching providers: $e');
      debugPrint('Stack trace: $stackTrace');
      return null;
    }
  }

  static Future<void> startPollingProviders({
    required void Function(Map<String, dynamic>?) onData,
    Duration interval = const Duration(seconds: 1),
  }) async {
    _pollingTimer?.cancel();

    try {
      final initialData = await fetchProviders();
      onData(initialData);

      _pollingTimer = Timer.periodic(interval, (_) async {
        final data = await fetchProviders();
        if (data != null) {
          onData(data);
        }
      });

      if (!_isSubscribed) {
        await serviceManager.callServiceExtensionOnMainIsolate(
          DevToolsExtKey.subscribeProviderEvents,
        );
        _isSubscribed = true;
      }
    } catch (e, stackTrace) {
      debugPrint('Error in startPollingProviders: $e');
      debugPrint('Stack trace: $stackTrace');
    }
  }

  static Future<void> stopPollingProviders() async {
    _pollingTimer?.cancel();
    _pollingTimer = null;

    if (_isSubscribed) {
      try {
        await serviceManager.callServiceExtensionOnMainIsolate(
          DevToolsExtKey.unsubscribeProviderEvents,
        );
        _isSubscribed = false;
      } catch (e) {
        debugPrint('Error unsubscribing from provider events: $e');
      }
    }
  }
}
