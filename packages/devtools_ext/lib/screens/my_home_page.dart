import 'package:devtools_ext/api/app_connection.dart';
import 'package:devtools_ext/main.dart';
import 'package:devtools_ext/screens/components/provider_card.dart';
import 'package:devtools_ext/screens/components/timeline_item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, dynamic>? _providerData;
  bool _isLoading = true;
  String? _error;
  int _selectedTabIndex = 0;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _startPolling();
  }

  @override
  void dispose() {
    AppConnection.stopPollingProviders();
    super.dispose();
  }

  void _startPolling() {
    AppConnection.startPollingProviders(
      onData: (data) {
        if (data == null) {
          setState(() {
            _error =
                'Failed to fetch provider data. Please check if the app is running and connected.';
            _isLoading = false;
          });
          return;
        }

        if (!data.containsKey(DevToolsExtKey.fetchProviders) ||
            !data.containsKey(DevToolsExtKey.fetchProviderHistory)) {
          setState(() {
            _error = 'Invalid data structure received from the app.';
            _isLoading = false;
          });
          return;
        }

        setState(() {
          _providerData = data;
          _isLoading = false;
          _error = null;
        });
      },
    );
  }

  void _refresh() {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    _startPolling();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(icon: Icon(Icons.view_list), text: 'Active Providers'),
      const Tab(icon: Icon(Icons.history), text: 'Timeline'),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Monitor'),
          bottom: TabBar(
            tabs: tabs,
            onTap: (index) => setState(() => _selectedTabIndex = index),
            indicatorColor: Theme.of(context).colorScheme.primary,
          ),
          actions: [
            if (_error != null)
              IconButton(icon: const Icon(Icons.refresh), onPressed: _refresh),
          ],
        ),
        body:
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _error != null
                ? _buildErrorView(_error!, _refresh)
                : Column(
                  children: [
                    if (_selectedTabIndex == 1)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Search by provider name or event type ...',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                            ),
                            isDense: true,
                          ),
                          onChanged:
                              (value) => setState(() => _searchQuery = value),
                        ),
                      ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildActiveProvidersView(
                            _providerData?[DevToolsExtKey.fetchProviders] ?? [],
                          ),
                          _buildTimelineView(
                            _providerData?[DevToolsExtKey
                                    .fetchProviderHistory] ??
                                [],
                            _searchQuery,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        floatingActionButton: FloatingActionButton(
          onPressed: _refresh,
          tooltip: 'Refresh',
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }

  Widget _buildErrorView(String errorMessage, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Error: $errorMessage',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red),
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }

  Widget _buildActiveProvidersView(List<dynamic> providers) {
    if (providers.isEmpty) {
      return const Center(child: Text('No active providers found'));
    }

    return ListView.separated(
      itemCount: providers.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final provider = providers[index];
        return ProviderCard(provider: provider);
      },
    );
  }

  Widget _buildTimelineView(List<dynamic> history, String searchQuery) {
    if (history.isEmpty) {
      return const Center(child: Text('No provider history found'));
    }

    final sortedHistory = List<dynamic>.from(history)..sort(
      (a, b) => DateTime.parse(
        b['timestamp'].toString(),
      ).compareTo(DateTime.parse(a['timestamp'].toString())),
    );

    final filteredHistory =
        searchQuery.isEmpty
            ? sortedHistory
            : sortedHistory.where((event) {
              final name = event['name']?.toString().toLowerCase() ?? '';
              final type = event['type']?.toString().toLowerCase() ?? '';
              final eventType =
                  event['eventType']?.toString().toLowerCase() ?? '';
              final query = searchQuery.toLowerCase();

              return name.contains(query) ||
                  type.contains(query) ||
                  eventType.contains(query);
            }).toList();

    if (filteredHistory.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.search_off, size: 48, color: Colors.grey),
            const SizedBox(height: 16),
            Text('No providers found matching search criteria: "$searchQuery"'),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: filteredHistory.length,
      itemBuilder: (context, index) {
        final event = filteredHistory[index];
        final timestamp = DateTime.parse(event['timestamp'].toString());
        final relativeTime = formatRelativeTime(timestamp);

        return TimelineItem(
          provider: event,
          relativeTime: relativeTime,
          isFirst: index == 0,
          isLast: index == filteredHistory.length - 1,
        );
      },
    );
  }
}
