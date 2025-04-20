import 'package:app/samples/weather/models/daily_forecast.dart';
import 'package:app/samples/weather/models/weather_models.dart';
import 'package:app/samples/weather/services/weather_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_provider.g.dart';

@Riverpod(keepAlive: true)
WeatherService weatherService(Ref ref) {
  return WeatherService();
}

@riverpod
Future<WeatherResponse> tokyoWeather(Ref ref) async {
  final weatherService = ref.watch(weatherServiceProvider);
  return await weatherService.getWeather(
    latitude: 35.6895,
    longitude: 139.6917,
  );
}

@riverpod
Future<WeatherResponse> locationWeather(
  Ref ref, {
  required double latitude,
  required double longitude,
  String? timezone,
}) async {
  final weatherService = ref.watch(weatherServiceProvider);
  return await weatherService.getWeather(
    latitude: latitude,
    longitude: longitude,
    timezone: timezone,
  );
}

@riverpod
Future<double> currentTemperature(Ref ref) async {
  final weather = await ref.watch(tokyoWeatherProvider.future);
  final now = DateTime.now();
  final timeList = weather.hourly.time;

  int closestIndex = 0;
  DateTime closestTime = DateTime.parse(timeList[0]);
  int minDifference = now.difference(closestTime).inMinutes.abs();

  for (int i = 1; i < timeList.length; i++) {
    final currentTime = DateTime.parse(timeList[i]);
    final difference = now.difference(currentTime).inMinutes.abs();

    if (difference < minDifference) {
      minDifference = difference;
      closestIndex = i;
    }
  }

  return weather.hourly.temperature2m[closestIndex];
}

@riverpod
Future<int> todayWeatherCode(Ref ref) async {
  final weather = await ref.watch(tokyoWeatherProvider.future);
  return weather.daily.weatherCode[0];
}

@riverpod
Future<List<DailyForecast>> weeklyForecast(Ref ref) async {
  final weather = await ref.watch(tokyoWeatherProvider.future);

  final List<DailyForecast> forecasts = [];
  final daysCount = weather.daily.time.length;

  for (int i = 0; i < daysCount; i++) {
    forecasts.add(
      DailyForecast(
        date: DateTime.parse(weather.daily.time[i]),
        weatherCode: weather.daily.weatherCode[i],
        maxTemperature: weather.daily.temperature2mMax[i],
        minTemperature: weather.daily.temperature2mMin[i],
        precipitationSum: weather.daily.precipitationSum[i],
        precipitationProbability: weather.daily.precipitationProbabilityMax[i],
        sunrise: DateTime.parse(weather.daily.sunrise[i]),
        sunset: DateTime.parse(weather.daily.sunset[i]),
      ),
    );
  }

  return forecasts;
}
