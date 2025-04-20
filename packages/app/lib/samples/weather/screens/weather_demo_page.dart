import 'package:app/samples/weather/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherDemoPage extends ConsumerStatefulWidget {
  const WeatherDemoPage({super.key});

  @override
  ConsumerState<WeatherDemoPage> createState() => _WeatherDemoPageState();
}

class _WeatherDemoPageState extends ConsumerState<WeatherDemoPage> {
  void _refreshData() {
    ref.invalidate(tokyoWeatherProvider);
    ref.invalidate(currentTemperatureProvider);
    ref.invalidate(todayWeatherCodeProvider);
    ref.invalidate(weeklyForecastProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Open Meteo 天気デモ')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RefreshIndicator(
            onRefresh: () async {
              _refreshData();
            },
            child: ListView(
              children: [
                const Text(
                  '東京の天気',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildCurrentWeather(ref),
                const SizedBox(height: 24),
                const Text(
                  '週間天気予報',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                _buildWeeklyForecast(ref),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentWeather(WidgetRef ref) {
    final temperatureAsync = ref.watch(currentTemperatureProvider);
    final weatherCodeAsync = ref.watch(todayWeatherCodeProvider);

    return temperatureAsync.when(
      data: (temperature) {
        return weatherCodeAsync.when(
          data: (weatherCode) {
            return Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${temperature.toStringAsFixed(1)}℃',
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _getWeatherDescription(weatherCode),
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      _getWeatherIcon(weatherCode),
                      size: 64,
                      color: _getWeatherColor(weatherCode),
                    ),
                  ],
                ),
              ),
            );
          },
          loading:
              () => const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          error:
              (error, stack) => Card(
                color: Colors.red.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('エラー: $error'),
                ),
              ),
        );
      },
      loading:
          () => const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
      error:
          (error, stack) => Card(
            color: Colors.red.shade100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('エラー: $error'),
            ),
          ),
    );
  }

  Widget _buildWeeklyForecast(WidgetRef ref) {
    final forecastAsync = ref.watch(weeklyForecastProvider);

    return forecastAsync.when(
      data: (forecasts) {
        return Column(
          children:
              forecasts.map((forecast) {
                final date = forecast.date;
                final weekDay = _getWeekdayName(date.weekday);

                return Card(
                  elevation: 1,
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          child: Text(
                            weekDay,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          _getWeatherIcon(forecast.weatherCode),
                          color: _getWeatherColor(forecast.weatherCode),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            _getWeatherDescription(forecast.weatherCode),
                          ),
                        ),
                        Text(
                          '${forecast.maxTemperature.toStringAsFixed(1)}℃',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${forecast.minTemperature.toStringAsFixed(1)}℃',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error:
          (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                Text('エラー: $error'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _refreshData,
                  child: const Text('再試行'),
                ),
              ],
            ),
          ),
    );
  }

  String _getWeekdayName(int weekday) {
    switch (weekday) {
      case 1:
        return '月曜';
      case 2:
        return '火曜';
      case 3:
        return '水曜';
      case 4:
        return '木曜';
      case 5:
        return '金曜';
      case 6:
        return '土曜';
      case 7:
        return '日曜';
      default:
        return '';
    }
  }

  String _getWeatherDescription(int weatherCode) {
    switch (weatherCode) {
      case 0:
        return '快晴';
      case 1:
        return '晴れ';
      case 2:
        return '一部曇り';
      case 3:
        return '曇り';
      case 45:
      case 48:
        return '霧';
      case 51:
      case 53:
      case 55:
        return '霧雨';
      case 56:
      case 57:
        return '着氷性の霧雨';
      case 61:
      case 63:
      case 65:
        return '雨';
      case 66:
      case 67:
        return '着氷性の雨';
      case 71:
      case 73:
      case 75:
        return '雪';
      case 77:
        return '霧雪';
      case 80:
      case 81:
      case 82:
        return 'にわか雨';
      case 85:
      case 86:
        return 'にわか雪';
      case 95:
        return '雷雨';
      case 96:
      case 99:
        return '雹を伴う雷雨';
      default:
        return '不明';
    }
  }

  IconData _getWeatherIcon(int weatherCode) {
    switch (weatherCode) {
      case 0:
      case 1:
        return Icons.wb_sunny;
      case 2:
        return Icons.wb_cloudy;
      case 3:
        return Icons.cloud;
      case 45:
      case 48:
        return Icons.cloud_queue;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
        return Icons.grain;
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
        return Icons.water_drop;
      case 71:
      case 73:
      case 75:
      case 77:
        return Icons.ac_unit;
      case 80:
      case 81:
      case 82:
        return Icons.beach_access;
      case 85:
      case 86:
        return Icons.snowing;
      case 95:
      case 96:
      case 99:
        return Icons.flash_on;
      default:
        return Icons.question_mark;
    }
  }

  Color _getWeatherColor(int weatherCode) {
    switch (weatherCode) {
      case 0:
      case 1:
        return Colors.orange;
      case 2:
        return Colors.amber;
      case 3:
        return Colors.grey;
      case 45:
      case 48:
        return Colors.blueGrey;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
        return Colors.lightBlue;
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
        return Colors.blue;
      case 71:
      case 73:
      case 75:
      case 77:
        return Colors.lightBlue.shade100;
      case 80:
      case 81:
      case 82:
        return Colors.indigo;
      case 85:
      case 86:
        return Colors.blue.shade200;
      case 95:
      case 96:
      case 99:
        return Colors.deepPurple;
      default:
        return Colors.grey;
    }
  }
}
