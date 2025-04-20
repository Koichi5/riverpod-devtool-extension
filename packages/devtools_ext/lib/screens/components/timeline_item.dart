import 'package:flutter/material.dart';

class TimelineItem extends StatelessWidget {
  final dynamic provider;
  final String relativeTime;
  final bool isFirst;
  final bool isLast;

  const TimelineItem({
    super.key,
    required this.provider,
    required this.relativeTime,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final eventType = provider['eventType']?.toString() ?? 'unknown';
    final colorScheme = Theme.of(context).colorScheme;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Column(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: _getEventColor(eventType),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      _getEventIcon(eventType),
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                if (!isLast)
                  Expanded(
                    child: VerticalDivider(
                      color: colorScheme.outlineVariant,
                      thickness: 2,
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        provider['name']?.toString() ?? 'Unnamed Provider',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        relativeTime,
                        style: TextStyle(
                          fontSize: 12,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Event: $eventType',
                    style: TextStyle(
                      color: _getEventColor(eventType),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('Type: ${provider['type']}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getEventColor(String eventType) {
    switch (eventType) {
      case 'added':
        return Colors.green;
      case 'updated':
        return Colors.blue;
      case 'disposed':
        return Colors.red;
      case 'invalidated':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  IconData _getEventIcon(String eventType) {
    switch (eventType) {
      case 'added':
        return Icons.add_circle_outline;
      case 'updated':
        return Icons.update;
      case 'disposed':
        return Icons.delete_outline;
      case 'invalidated':
        return Icons.refresh;
      default:
        return Icons.device_unknown;
    }
  }
}
