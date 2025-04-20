import 'package:devtools_ext/main.dart';
import 'package:flutter/material.dart';

class ProviderCard extends StatelessWidget {
  final dynamic provider;

  const ProviderCard({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    final timestamp = DateTime.parse(provider['timestamp'].toString());
    final relativeTime = formatRelativeTime(timestamp);

    return ExpansionTile(
      title: Text(
        provider['name']?.toString() ?? 'Unnamed Provider',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Updated: $relativeTime'),
      expandedAlignment: Alignment.centerLeft,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Type: ${provider['type']}'),
              const SizedBox(height: 8),
              Text('Event: ${provider['eventType']}'),
              const SizedBox(height: 8),
              Text('Timestamp: ${timestamp.toLocal()}'),
            ],
          ),
        ),
      ],
    );
  }
}
